// Feature 3 (Hussein): Spielvorschläge – wenn ein aktiver Termin existiert
// kann jedes Mitglied Spiele vorschlagen (keine Duplikate pro Termin).
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../../../api/prisma_client.dart';
import '../../../../components/feature_page.dart';
import '../../../auth/bloc.dart';
import '../../../groups/bloc.dart';
import '../bloc/bloc.dart';

class GameProposalsScreen extends StatelessWidget {
  const GameProposalsScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final groupId = context.read<GroupsBloc>().state.activeGroup!.id;
    final me = context.read<AuthBloc>().state.currentUser!;
    return BlocProvider(
      create: (ctx) =>
          GameProposalsBloc(db: ctx.read<PrismaClient>(), currentUserId: me.id)
            ..add(GameProposalsLoadRequested(groupId)),
      child: const _ProposalsView(),
    );
  }
}

class _ProposalsView extends StatelessWidget {
  const _ProposalsView();

  @override
  Widget build(BuildContext context) {
    return FeaturePage(
      title: 'Spielvorschläge',
      icon: Icons.lightbulb_outline,
      subtitle:
          'Solange ein Spieltermin aktiv ist, kann jede:r Spiele für den '
          'Abend einreichen.',
      child: BlocBuilder<GameProposalsBloc, GameProposalsState>(
        builder: (context, state) {
          return switch (state) {
            GameProposalsLoading() => const Center(
              child: CircularProgressIndicator(),
            ),
            GameProposalsError(:final message) => EmptyState(
              icon: Icons.error_outline,
              title: 'Fehler',
              message: message,
            ),
            GameProposalsLoaded() => _Body(state: state),
          };
        },
      ),
    );
  }
}

class _Body extends StatelessWidget {
  final GameProposalsLoaded state;
  const _Body({required this.state});

  @override
  Widget build(BuildContext context) {
    if (state.session == null) {
      return const EmptyState(
        icon: Icons.event_busy_outlined,
        title: 'Kein aktiver Spieltermin',
        message:
            'Vorschläge können nur eingereicht werden, wenn ein Termin '
            'geplant ist.',
      );
    }
    return Column(
      crossAxisAlignment: CrossAxisAlignment.stretch,
      children: [
        if (state.errorMessage != null) ...[
          _Banner(state.errorMessage!, error: true),
          const SizedBox(height: 8),
        ],
        if (state.infoMessage != null) ...[
          _Banner(state.infoMessage!, error: false),
          const SizedBox(height: 8),
        ],
        Expanded(
          child: state.proposals.isEmpty
              ? const EmptyState(
                  icon: Icons.inbox_outlined,
                  title: 'Noch keine Vorschläge',
                  message: 'Sei die Erste oder der Erste mit einem Vorschlag!',
                )
              : ListView.separated(
                  itemCount: state.proposals.length,
                  separatorBuilder: (_, __) => const SizedBox(height: 12),
                  itemBuilder: (_, i) {
                    final p = state.proposals[i];
                    final by =
                        state.proposers[p.proposedById]?.displayName ??
                        'Jemand';
                    return SectionCard(
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            p.title,
                            style: Theme.of(context).textTheme.titleMedium,
                          ),
                          if (p.description.isNotEmpty) ...[
                            const SizedBox(height: 4),
                            Text(p.description),
                          ],
                          const SizedBox(height: 6),
                          Text(
                            'Vorgeschlagen von $by',
                            style: Theme.of(context).textTheme.bodySmall,
                          ),
                        ],
                      ),
                    );
                  },
                ),
        ),
        const SizedBox(height: 12),
        FilledButton.icon(
          icon: const Icon(Icons.add),
          label: const Text('Spiel vorschlagen'),
          onPressed: () => _openCreate(context),
        ),
      ],
    );
  }
}

Future<void> _openCreate(BuildContext context) async {
  final bloc = context.read<GameProposalsBloc>();
  final titleCtrl = TextEditingController();
  final descCtrl = TextEditingController();
  final result = await showDialog<({String title, String description})>(
    context: context,
    builder: (ctx) => AlertDialog(
      title: const Text('Spiel vorschlagen'),
      content: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          TextField(
            controller: titleCtrl,
            autofocus: true,
            decoration: const InputDecoration(labelText: 'Titel'),
          ),
          const SizedBox(height: 12),
          TextField(
            controller: descCtrl,
            minLines: 2,
            maxLines: 4,
            decoration: const InputDecoration(
              labelText: 'Beschreibung (optional)',
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
          ).pop((title: titleCtrl.text, description: descCtrl.text)),
          child: const Text('Vorschlagen'),
        ),
      ],
    ),
  );
  if (result == null) return;
  bloc.add(
    GameProposalCreateRequested(
      title: result.title,
      description: result.description,
    ),
  );
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
