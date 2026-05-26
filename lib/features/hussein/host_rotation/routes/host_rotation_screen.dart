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
          child: Row(
            children: [
              Expanded(
                child: Text(
                  'Reihenfolge',
                  style: Theme.of(context).textTheme.titleSmall,
                ),
              ),
              if (state.isOwner)
                OutlinedButton.icon(
                  icon: const Icon(Icons.shuffle, size: 18),
                  label: const Text('Mischen'),
                  onPressed: actives.length < 2
                      ? null
                      : () => context.read<HostRotationBloc>().add(
                          const HostRotationShuffleRequested(),
                        ),
                ),
            ],
          ),
        ),
        const SizedBox(height: 4),
        if (actives.isEmpty)
          const SectionCard(child: Text('Niemand ist gerade aktiv.'))
        else if (state.isOwner)
          _OwnerReorderableList(
            entries: actives,
            nextHostUserId: state.nextHostUserId,
            lastHostUserId: state.lastHostUserId,
          )
        else
          _ReadOnlyList(
            entries: actives,
            nextHostUserId: state.nextHostUserId,
            lastHostUserId: state.lastHostUserId,
          ),
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
  final String? lastHostUserId;
  const _ReadOnlyList({
    required this.entries,
    required this.nextHostUserId,
    required this.lastHostUserId,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        for (var i = 0; i < entries.length; i++)
          Opacity(
            opacity: entries[i].user.id == lastHostUserId ? 0.5 : 1.0,
            child: Card(
              child: ListTile(
                leading: CircleAvatar(child: Text('${i + 1}')),
                title: Text(entries[i].user.displayName),
                trailing: entries[i].user.id == nextHostUserId
                    ? const Chip(label: Text('Nächste:r'))
                    : entries[i].user.id == lastHostUserId
                    ? const Chip(label: Text('Zuletzt'))
                    : null,
              ),
            ),
          ),
      ],
    );
  }
}

class _OwnerReorderableList extends StatelessWidget {
  final List<RotationEntry> entries;
  final String? nextHostUserId;
  final String? lastHostUserId;
  const _OwnerReorderableList({
    required this.entries,
    required this.nextHostUserId,
    required this.lastHostUserId,
  });

  @override
  Widget build(BuildContext context) {
    final lastIdx = lastHostUserId == null
        ? -1
        : entries.indexWhere((e) => e.user.id == lastHostUserId);

    if (lastIdx < 0) {
      // No locked last host — one single reorderable segment.
      return _ReorderableSegment(
        entries: entries,
        baseIndex: 0,
        totalActives: entries.length,
        nextHostUserId: nextHostUserId,
      );
    }

    final before = entries.sublist(0, lastIdx);
    final lastHostEntry = entries[lastIdx];
    final after = entries.sublist(lastIdx + 1);
    return Column(
      mainAxisSize: MainAxisSize.min,
      children: [
        if (before.isNotEmpty)
          _ReorderableSegment(
            key: const ValueKey('rotation-segment-before'),
            entries: before,
            baseIndex: 0,
            totalActives: entries.length,
            nextHostUserId: nextHostUserId,
          ),
        _LastHostStaticCard(entry: lastHostEntry, displayNumber: lastIdx + 1),
        if (after.isNotEmpty)
          _ReorderableSegment(
            key: const ValueKey('rotation-segment-after'),
            entries: after,
            baseIndex: lastIdx + 1,
            totalActives: entries.length,
            nextHostUserId: nextHostUserId,
          ),
      ],
    );
  }
}

class _LastHostStaticCard extends StatelessWidget {
  final RotationEntry entry;
  final int displayNumber;
  const _LastHostStaticCard({required this.entry, required this.displayNumber});

  @override
  Widget build(BuildContext context) {
    final scheme = Theme.of(context).colorScheme;
    return IgnorePointer(
      child: Opacity(
        opacity: 0.55,
        child: Card(
          elevation: 0,
          color: scheme.surfaceContainerHighest,
          child: ListTile(
            leading: CircleAvatar(child: Text('$displayNumber')),
            title: Text(entry.user.displayName),
            trailing: Wrap(
              spacing: 6,
              children: [
                const Icon(Icons.lock_outline, size: 18),
                const Chip(label: Text('Zuletzt')),
              ],
            ),
          ),
        ),
      ),
    );
  }
}

class _ReorderableSegment extends StatelessWidget {
  final List<RotationEntry> entries;
  final int baseIndex; // offset within the full actives list
  final int totalActives;
  final String? nextHostUserId;
  const _ReorderableSegment({
    super.key,
    required this.entries,
    required this.baseIndex,
    required this.totalActives,
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
        final localTarget = newIndex > oldIndex ? newIndex - 1 : newIndex;
        context.read<HostRotationBloc>().add(
          HostRotationMoveRequested(
            userId: entries[oldIndex].user.id,
            targetIndex: baseIndex + localTarget,
          ),
        );
      },
      itemBuilder: (context, i) {
        final e = entries[i];
        final displayNum = baseIndex + i + 1;
        final isNext = e.user.id == nextHostUserId;
        return Card(
          key: ValueKey(e.user.id),
          child: ListTile(
            leading: CircleAvatar(child: Text('$displayNum')),
            title: Text(e.user.displayName),
            trailing: Row(
              mainAxisSize: MainAxisSize.min,
              children: [
                if (isNext)
                  const Padding(
                    padding: EdgeInsets.only(right: 8),
                    child: Chip(label: Text('Nächste:r')),
                  ),
                if (!isNext)
                  IconButton(
                    tooltip: 'Als Nächste:n markieren',
                    icon: const Icon(Icons.skip_next),
                    onPressed: () => context.read<HostRotationBloc>().add(
                      HostRotationMarkAsNextRequested(e.user.id),
                    ),
                  ),
                IconButton(
                  tooltip: 'Position setzen',
                  icon: const Icon(Icons.format_list_numbered),
                  onPressed: () => _promptInsert(context, e, totalActives),
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
