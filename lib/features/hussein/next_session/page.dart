// Feature 1 (Hussein): Nächster Spieltermin – einen aktiven Termin anlegen,
// editieren und beenden. Host wird automatisch aus der Rotation gezogen.
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:intl/intl.dart';

import '../../../api/prisma_client.dart';
import '../../../components/feature_page.dart';
import '../../auth/bloc.dart';
import '../../groups/bloc.dart';
import 'bloc.dart';

class NextSessionPage extends StatelessWidget {
  const NextSessionPage({super.key});

  @override
  Widget build(BuildContext context) {
    final group = context.read<GroupsBloc>().state.activeGroup!;
    final me = context.read<AuthBloc>().state.currentUser!;
    return BlocProvider(
      create: (ctx) => NextSessionBloc(
        ctx.read<PrismaClient>(),
        currentUserId: me.id,
        groupOwnerId: group.createdById,
      )..add(NextSessionLoadRequested(group.id)),
      child: _NextSessionView(groupId: group.id),
    );
  }
}

class _NextSessionView extends StatelessWidget {
  final String groupId;
  const _NextSessionView({required this.groupId});

  @override
  Widget build(BuildContext context) {
    return FeaturePage(
      title: 'Nächster Spieltermin',
      icon: Icons.event_available_outlined,
      subtitle:
          'Wann und wo trefft ihr euch das nächste Mal. Es kann immer nur '
          'einen aktiven Termin geben.',
      child: BlocBuilder<NextSessionBloc, NextSessionState>(
        builder: (context, state) {
          return switch (state) {
            NextSessionLoading() => const Center(
              child: CircularProgressIndicator(),
            ),
            NextSessionError(:final message) => EmptyState(
              icon: Icons.error_outline,
              title: 'Fehler',
              message: message,
            ),
            NextSessionLoaded() => _Body(state: state, groupId: groupId),
          };
        },
      ),
    );
  }
}

class _Body extends StatelessWidget {
  final NextSessionLoaded state;
  final String groupId;
  const _Body({required this.state, required this.groupId});

  @override
  Widget build(BuildContext context) {
    final me = context.read<AuthBloc>().state.currentUser!;
    final isOwner = context.read<GroupsBloc>().state.isActiveGroupOwner;
    return ListView(
      children: [
        if (state.errorMessage != null) ...[
          _Banner(state.errorMessage!, error: true),
          const SizedBox(height: 8),
        ],
        if (state.infoMessage != null) ...[
          _Banner(state.infoMessage!, error: false),
          const SizedBox(height: 8),
        ],
        if (state.session == null)
          _NoActiveSession(proposedHost: state.proposedHost, groupId: groupId)
        else
          _ActiveSession(
            session: state.session!,
            host: state.host,
            canFinish: state.session!.hostId == me.id || isOwner,
          ),
        const SizedBox(height: 16),
        if (state.history.isNotEmpty) ...[
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 4),
            child: Text(
              'Vergangene Termine',
              style: Theme.of(context).textTheme.titleSmall,
            ),
          ),
          const SizedBox(height: 4),
          ...state.history.map(
            (s) => Card(
              child: ListTile(
                leading: const Icon(Icons.history),
                title: Text(_formatDate(s.scheduledAt)),
                subtitle: Text(s.location),
                trailing: const Chip(label: Text('Beendet')),
              ),
            ),
          ),
        ],
      ],
    );
  }
}

class _NoActiveSession extends StatelessWidget {
  final User? proposedHost;
  final String groupId;
  const _NoActiveSession({required this.proposedHost, required this.groupId});

  @override
  Widget build(BuildContext context) {
    return SectionCard(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Row(
            children: [
              const Icon(Icons.event_busy_outlined),
              const SizedBox(width: 8),
              Text(
                'Kein aktiver Termin',
                style: Theme.of(context).textTheme.titleMedium,
              ),
            ],
          ),
          const SizedBox(height: 8),
          Text(
            proposedHost == null
                ? 'In der Gastgeber-Rotation ist niemand aktiv.'
                : 'Vorgeschlagene:r Gastgeber:in: ${proposedHost!.displayName}',
          ),
          const SizedBox(height: 12),
          FilledButton.icon(
            icon: const Icon(Icons.add),
            label: const Text('Neuen Termin anlegen'),
            onPressed: proposedHost == null
                ? null
                : () => _openEditor(context, groupId: groupId),
          ),
        ],
      ),
    );
  }
}

class _ActiveSession extends StatelessWidget {
  final GameSession session;
  final User? host;
  final bool canFinish;
  const _ActiveSession({
    required this.session,
    required this.host,
    required this.canFinish,
  });

  @override
  Widget build(BuildContext context) {
    return SectionCard(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            _formatDate(session.scheduledAt),
            style: Theme.of(context).textTheme.titleLarge,
          ),
          const SizedBox(height: 12),
          _Row(icon: Icons.location_on_outlined, text: session.location),
          const SizedBox(height: 8),
          _Row(
            icon: Icons.person_outline,
            text: 'Gastgeber:in: ${host?.displayName ?? '—'}',
          ),
          const SizedBox(height: 16),
          Wrap(
            spacing: 8,
            runSpacing: 8,
            children: [
              OutlinedButton.icon(
                icon: const Icon(Icons.edit_outlined),
                label: const Text('Bearbeiten'),
                onPressed: () => _openEditor(
                  context,
                  groupId: session.groupId,
                  session: session,
                ),
              ),
              if (canFinish)
                FilledButton.icon(
                  icon: const Icon(Icons.flag_outlined),
                  label: const Text('Spieltermin beenden'),
                  onPressed: () async {
                    final confirm = await showDialog<bool>(
                      context: context,
                      builder: (ctx) => AlertDialog(
                        title: const Text('Termin beenden?'),
                        content: const Text(
                          'Danach werden Bewertungen freigeschaltet und '
                          'einige Funktionen (z. B. Essensbestellung) '
                          'gesperrt.',
                        ),
                        actions: [
                          TextButton(
                            onPressed: () => Navigator.of(ctx).pop(false),
                            child: const Text('Abbrechen'),
                          ),
                          FilledButton(
                            onPressed: () => Navigator.of(ctx).pop(true),
                            child: const Text('Beenden'),
                          ),
                        ],
                      ),
                    );
                    if (confirm == true && context.mounted) {
                      context.read<NextSessionBloc>().add(
                        NextSessionFinishRequested(session.id),
                      );
                    }
                  },
                ),
            ],
          ),
        ],
      ),
    );
  }
}

Future<void> _openEditor(
  BuildContext context, {
  required String groupId,
  GameSession? session,
}) async {
  final bloc = context.read<NextSessionBloc>();
  final initial =
      session?.scheduledAt ?? DateTime.now().add(const Duration(days: 7));
  final dateController = TextEditingController(text: _formatDate(initial));
  final locationController = TextEditingController(
    text: session?.location ?? '',
  );
  DateTime picked = initial;

  final result = await showDialog<({DateTime when, String location})>(
    context: context,
    builder: (ctx) {
      return StatefulBuilder(
        builder: (ctx, setState) => AlertDialog(
          title: Text(session == null ? 'Neuer Termin' : 'Termin bearbeiten'),
          content: Column(
            mainAxisSize: MainAxisSize.min,
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: [
              InkWell(
                onTap: () async {
                  final d = await showDatePicker(
                    context: ctx,
                    initialDate: picked,
                    firstDate: DateTime.now().subtract(const Duration(days: 1)),
                    lastDate: DateTime.now().add(const Duration(days: 365 * 2)),
                  );
                  if (d == null) return;
                  if (!ctx.mounted) return;
                  final t = await showTimePicker(
                    context: ctx,
                    initialTime: TimeOfDay.fromDateTime(picked),
                  );
                  if (t == null) return;
                  picked = DateTime(d.year, d.month, d.day, t.hour, t.minute);
                  setState(() {
                    dateController.text = _formatDate(picked);
                  });
                },
                child: IgnorePointer(
                  child: TextField(
                    controller: dateController,
                    decoration: const InputDecoration(
                      labelText: 'Datum & Uhrzeit',
                      prefixIcon: Icon(Icons.event),
                    ),
                  ),
                ),
              ),
              const SizedBox(height: 12),
              TextField(
                controller: locationController,
                decoration: const InputDecoration(
                  labelText: 'Ort',
                  prefixIcon: Icon(Icons.location_on_outlined),
                ),
              ),
            ],
          ),
          actions: [
            TextButton(
              onPressed: () => Navigator.of(ctx).pop(),
              child: const Text('Abbrechen'),
            ),
            FilledButton(
              onPressed: () => Navigator.of(
                ctx,
              ).pop((when: picked, location: locationController.text)),
              child: Text(session == null ? 'Anlegen' : 'Speichern'),
            ),
          ],
        ),
      );
    },
  );
  if (result == null) return;
  if (session == null) {
    bloc.add(
      NextSessionCreateRequested(
        groupId: groupId,
        scheduledAt: result.when,
        location: result.location,
      ),
    );
  } else {
    bloc.add(
      NextSessionEditRequested(
        sessionId: session.id,
        scheduledAt: result.when,
        location: result.location,
      ),
    );
  }
}

String _formatDate(DateTime dt) =>
    DateFormat("EEE, d. MMM y · HH:mm", 'de_DE').format(dt);

class _Row extends StatelessWidget {
  final IconData icon;
  final String text;
  const _Row({required this.icon, required this.text});
  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Icon(icon, size: 18, color: Theme.of(context).colorScheme.primary),
        const SizedBox(width: 8),
        Expanded(child: Text(text)),
      ],
    );
  }
}

class _Banner extends StatelessWidget {
  final String text;
  final bool error;
  const _Banner(this.text, {required this.error});
  @override
  Widget build(BuildContext context) {
    final scheme = Theme.of(context).colorScheme;
    final color = error ? scheme.errorContainer : scheme.secondaryContainer;
    final on = error ? scheme.onErrorContainer : scheme.onSecondaryContainer;
    return Container(
      padding: const EdgeInsets.symmetric(horizontal: 12, vertical: 10),
      decoration: BoxDecoration(
        color: color,
        borderRadius: BorderRadius.circular(12),
      ),
      child: Row(
        children: [
          Icon(error ? Icons.error_outline : Icons.info_outline, color: on),
          const SizedBox(width: 8),
          Expanded(
            child: Text(text, style: TextStyle(color: on)),
          ),
        ],
      ),
    );
  }
}
