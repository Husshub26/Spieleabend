import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../components/feature_page.dart';
import 'bloc.dart';
import 'picker_page.dart' show GroupBanner;

class GroupMembersPage extends StatelessWidget {
  const GroupMembersPage({super.key});

  @override
  Widget build(BuildContext context) {
    final activeId = context.select<GroupsBloc, String?>(
      (b) => b.state.activeGroup?.id,
    );
    if (activeId == null) {
      return const Scaffold(
        body: Center(child: Text('Keine Gruppe ausgewählt.')),
      );
    }
    // Trigger members load when entering page.
    context.read<GroupsBloc>().add(GroupMembersRequested(activeId));
    return const _MembersView();
  }
}

class _MembersView extends StatelessWidget {
  const _MembersView();

  @override
  Widget build(BuildContext context) {
    return FeaturePage(
      title: 'Mitglieder',
      icon: Icons.groups_outlined,
      subtitle:
          'Wer alles in deiner aktuellen Gruppe ist und wie du jemanden einlädst.',
      child: BlocBuilder<GroupsBloc, GroupsState>(
        builder: (context, state) {
          final group = state.activeGroup;
          if (group == null) return const SizedBox.shrink();
          final creator = state.activeCreator;
          final isOwner = state.isActiveGroupOwner;
          return Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: [
              SectionCard(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Row(
                      children: [
                        const Icon(Icons.tag),
                        const SizedBox(width: 8),
                        Expanded(
                          child: Text(
                            group.name,
                            style: Theme.of(context).textTheme.titleMedium,
                          ),
                        ),
                      ],
                    ),
                    const SizedBox(height: 4),
                    Row(
                      children: [
                        const Icon(Icons.shield_outlined, size: 16),
                        const SizedBox(width: 6),
                        Expanded(
                          child: Text(
                            creator == null
                                ? 'Erstellt von …'
                                : 'Erstellt von ${creator.displayName}'
                                      '${isOwner ? ' (du)' : ''}',
                            style: Theme.of(context).textTheme.bodySmall,
                          ),
                        ),
                      ],
                    ),
                  ],
                ),
              ),
              const SizedBox(height: 12),
              if (state.errorMessage != null) ...[
                GroupBanner.error(state.errorMessage!),
                const SizedBox(height: 8),
              ],
              if (state.infoMessage != null) ...[
                GroupBanner.info(state.infoMessage!),
                const SizedBox(height: 8),
              ],
              Expanded(
                child: state.activeMembers.isEmpty
                    ? const Center(child: CircularProgressIndicator())
                    : ListView.separated(
                        itemCount: state.activeMembers.length,
                        separatorBuilder: (_, __) => const Divider(height: 1),
                        itemBuilder: (_, i) {
                          final u = state.activeMembers[i];
                          final me = state.user?.id == u.id;
                          final isCreator = creator?.id == u.id;
                          return ListTile(
                            leading: Icon(
                              isCreator
                                  ? Icons.shield
                                  : Icons.account_circle_outlined,
                            ),
                            title: Text(u.displayName),
                            subtitle: Text('@${u.username}'),
                            trailing: me ? const Chip(label: Text('Du')) : null,
                          );
                        },
                      ),
              ),
              const SizedBox(height: 12),
              if (isOwner)
                _InviteRow(groupId: group.id)
              else
                Text(
                  'Nur ${creator?.displayName ?? "der Ersteller"} kann '
                  'neue Mitglieder einladen.',
                  style: Theme.of(context).textTheme.bodySmall,
                ),
            ],
          );
        },
      ),
    );
  }
}

class _InviteRow extends StatefulWidget {
  final String groupId;
  const _InviteRow({required this.groupId});

  @override
  State<_InviteRow> createState() => _InviteRowState();
}

class _InviteRowState extends State<_InviteRow> {
  final _controller = TextEditingController();

  @override
  void dispose() {
    _controller.dispose();
    super.dispose();
  }

  void _invite() {
    context.read<GroupsBloc>().add(
      GroupInviteRequested(groupId: widget.groupId, username: _controller.text),
    );
    _controller.clear();
  }

  @override
  Widget build(BuildContext context) {
    // Stacking the field and button vertically (instead of side-by-side in
    // a `Row`) sidesteps a Material/flex layout bug where `FilledButton`
    // sitting next to an `Expanded` `TextField` inside a width-stretched
    // `Column` ends up being laid out with an infinite width pass and
    // throws "BoxConstraints forces an infinite width".
    return Column(
      crossAxisAlignment: CrossAxisAlignment.stretch,
      mainAxisSize: MainAxisSize.min,
      children: [
        TextField(
          controller: _controller,
          decoration: const InputDecoration(
            labelText: 'Benutzername einladen',
            hintText: 'z. B. bruno',
            prefixIcon: Icon(Icons.person_add_alt_1),
          ),
          textInputAction: TextInputAction.send,
          onSubmitted: (_) => _invite(),
        ),
        const SizedBox(height: 8),
        Align(
          alignment: Alignment.centerRight,
          child: FilledButton.icon(
            onPressed: _invite,
            icon: const Icon(Icons.send),
            label: const Text('Einladen'),
          ),
        ),
      ],
    );
  }
}
