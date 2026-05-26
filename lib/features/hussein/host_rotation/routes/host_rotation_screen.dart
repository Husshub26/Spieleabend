// Feature 2 (Hussein): Gastgeber-Rotation – Round-robin Reihenfolge mit
// Drag-&-Drop (Owner) und Aktiv-Schalter (jeder Mitspieler für sich selbst).
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../../../api/prisma_client.dart';
import '../../../../components/feature_page.dart';
import '../../../auth/bloc.dart';
import '../../../groups/bloc.dart';
import '../bloc/bloc.dart';

class HostRotationScreen extends StatelessWidget {
  const HostRotationScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final group = context.read<GroupsBloc>().state.activeGroup!;
    final me = context.read<AuthBloc>().state.currentUser!;
    return BlocProvider(
      create: (ctx) => HostRotationBloc(
        db: ctx.read<PrismaClient>(),
        currentUserId: me.id,
        groupOwnerId: group.createdById,
      )..add(HostRotationLoadRequested(group.id)),
      child: const _RotationView(),
    );
  }
}

class _RotationView extends StatelessWidget {
  const _RotationView();

  @override
  Widget build(BuildContext context) {
    return FeaturePage(
      title: 'Gastgeber-Rotation',
      icon: Icons.repeat_rounded,
      subtitle:
          'Wer ist als Nächstes mit Gastgeben dran. Mitglieder können sich '
          'pausieren; die Gruppenleitung kann die Reihenfolge per Drag & '
          'Drop oder mit „Position setzen“ anpassen.',
      child: BlocBuilder<HostRotationBloc, HostRotationState>(
        builder: (context, state) {
          return switch (state) {
            HostRotationLoading() => const Center(
              child: CircularProgressIndicator(),
            ),
            HostRotationError(:final message) => EmptyState(
              icon: Icons.error_outline,
              title: 'Fehler',
              message: message,
            ),
            HostRotationLoaded() => _LoadedBody(state: state),
          };
        },
      ),
    );
  }
}

class _LoadedBody extends StatelessWidget {
  final HostRotationLoaded state;
  const _LoadedBody({required this.state});

  @override
  Widget build(BuildContext context) {
    final mine = state.entries
        .where((e) => e.user.id == state.currentUserId)
        .cast<RotationEntry?>()
        .firstOrNull;
    final next = state.nextHostUserId == null
        ? null
        : state.entries
              .where((e) => e.user.id == state.nextHostUserId)
              .cast<RotationEntry?>()
              .firstOrNull;
    final actives = state.activeEntries;
    final inactives = state.inactiveEntries;
    return ListView(
      children: [
        SectionCard(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                'Nächste:r Gastgeber:in',
                style: Theme.of(context).textTheme.labelLarge,
              ),
              const SizedBox(height: 6),
              Row(
                children: [
                  const Icon(Icons.event_available_outlined),
                  const SizedBox(width: 8),
                  Expanded(
                    child: Text(
                      next?.user.displayName ?? 'Niemand aktiv in der Rotation',
                      style: Theme.of(context).textTheme.titleMedium,
                    ),
                  ),
                ],
              ),
              const SizedBox(height: 4),
              Text(
                'Wird beim Anlegen des nächsten Spieltermins automatisch als '
                'Gastgeber:in eingetragen.',
                style: Theme.of(context).textTheme.bodySmall,
              ),
            ],
          ),
        ),
        const SizedBox(height: 12),
        if (mine != null)
          SectionCard(
            child: SwitchListTile(
              contentPadding: EdgeInsets.zero,
              title: const Text('Ich bin in der Rotation'),
              subtitle: Text(
                mine.rotationActive
                    ? 'Du wirst als Gastgeber:in eingeteilt.'
                    : 'Du wirst übersprungen.',
              ),
              value: mine.rotationActive,
              onChanged: (v) => context.read<HostRotationBloc>().add(
                HostRotationActiveToggled(v),
              ),
            ),
          ),
        const SizedBox(height: 12),
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 4),
          child: Text(
            'Reihenfolge',
            style: Theme.of(context).textTheme.titleSmall,
          ),
        ),
        const SizedBox(height: 4),
        if (actives.isEmpty)
          const SectionCard(child: Text('Niemand ist gerade aktiv.'))
        else if (state.isOwner)
          _OwnerReorderableList(
            entries: actives,
            nextHostUserId: state.nextHostUserId,
          )
        else
          _ReadOnlyList(entries: actives, nextHostUserId: state.nextHostUserId),
        if (inactives.isNotEmpty) ...[
          const SizedBox(height: 16),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 4),
            child: Text(
              'Pausiert',
              style: Theme.of(context).textTheme.titleSmall,
            ),
          ),
          const SizedBox(height: 4),
          ...inactives.map(
            (e) => Card(
              child: ListTile(
                leading: const Icon(Icons.pause_circle_outline),
                title: Text(e.user.displayName),
                subtitle: const Text('Nicht in der Rotation'),
              ),
            ),
          ),
        ],
      ],
    );
  }
}

class _ReadOnlyList extends StatelessWidget {
  final List<RotationEntry> entries;
  final String? nextHostUserId;
  const _ReadOnlyList({required this.entries, required this.nextHostUserId});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        for (var i = 0; i < entries.length; i++)
          Card(
            child: ListTile(
              leading: CircleAvatar(child: Text('${i + 1}')),
              title: Text(entries[i].user.displayName),
              subtitle: Text(_statusFor(i)),
              trailing: entries[i].user.id == nextHostUserId
                  ? const Chip(label: Text('Nächste:r'))
                  : null,
            ),
          ),
      ],
    );
  }
}

class _OwnerReorderableList extends StatelessWidget {
  final List<RotationEntry> entries;
  final String? nextHostUserId;
  const _OwnerReorderableList({
    required this.entries,
    required this.nextHostUserId,
  });

  @override
  Widget build(BuildContext context) {
    return ReorderableListView.builder(
      shrinkWrap: true,
      physics: const NeverScrollableScrollPhysics(),
      buildDefaultDragHandles: false,
      itemCount: entries.length,
      onReorder: (oldIndex, newIndex) {
        // Flutter quirk: when dragging downwards newIndex is shifted by 1.
        final target = newIndex > oldIndex ? newIndex - 1 : newIndex;
        context.read<HostRotationBloc>().add(
          HostRotationMoveRequested(
            userId: entries[oldIndex].user.id,
            targetIndex: target,
          ),
        );
      },
      itemBuilder: (context, i) {
        final e = entries[i];
        return Card(
          key: ValueKey(e.user.id),
          child: ListTile(
            leading: CircleAvatar(child: Text('${i + 1}')),
            title: Text(e.user.displayName),
            subtitle: Text(_statusFor(i)),
            trailing: Row(
              mainAxisSize: MainAxisSize.min,
              children: [
                if (e.user.id == nextHostUserId)
                  const Padding(
                    padding: EdgeInsets.only(right: 8),
                    child: Chip(label: Text('Nächste:r')),
                  ),
                IconButton(
                  tooltip: 'Position setzen',
                  icon: const Icon(Icons.format_list_numbered),
                  onPressed: () => _promptInsert(context, e, entries.length),
                ),
                ReorderableDragStartListener(
                  index: i,
                  child: const Icon(Icons.drag_indicator),
                ),
              ],
            ),
          ),
        );
      },
    );
  }

  Future<void> _promptInsert(
    BuildContext context,
    RotationEntry entry,
    int total,
  ) async {
    final controller = TextEditingController();
    final bloc = context.read<HostRotationBloc>();
    final picked = await showDialog<int>(
      context: context,
      builder: (ctx) => AlertDialog(
        title: Text('Position für ${entry.user.displayName}'),
        content: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            Text('Position 1 – $total. Andere rücken nach hinten.'),
            const SizedBox(height: 12),
            TextField(
              controller: controller,
              autofocus: true,
              keyboardType: TextInputType.number,
              decoration: const InputDecoration(labelText: 'Position'),
            ),
          ],
        ),
        actions: [
          TextButton(
            onPressed: () => Navigator.of(ctx).pop(),
            child: const Text('Abbrechen'),
          ),
          FilledButton(
            onPressed: () {
              final n = int.tryParse(controller.text.trim());
              if (n == null || n < 1 || n > total) {
                Navigator.of(ctx).pop();
                return;
              }
              Navigator.of(ctx).pop(n - 1);
            },
            child: const Text('Übernehmen'),
          ),
        ],
      ),
    );
    if (picked != null) {
      bloc.add(
        HostRotationMoveRequested(userId: entry.user.id, targetIndex: picked),
      );
    }
  }
}

String _statusFor(int index) {
  if (index == 0) return 'Aktuell vorne';
  if (index == 1) return 'Danach dran';
  return '${index + 1}. in der Reihe';
}
