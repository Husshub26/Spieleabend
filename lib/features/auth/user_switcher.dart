import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../api/prisma_client.dart';
import '../groups/bloc.dart';
import 'bloc.dart';

/// Show a search-and-pick dialog of every user in the database. On pick,
/// clears the active group and dispatches `AuthLoginRequested` so the chosen
/// user becomes the logged-in account.
Future<void> showUserSwitcherDialog(BuildContext context) async {
  final db = context.read<PrismaClient>();
  final me = context.read<AuthBloc>().state.currentUser;
  final all = await db.user.findMany();
  final users = all.where((u) => u.id != me?.id).toList(growable: false)
    ..sort(
      (a, b) =>
          a.displayName.toLowerCase().compareTo(b.displayName.toLowerCase()),
    );
  if (!context.mounted) return;
  final picked = await showDialog<User>(
    context: context,
    builder: (ctx) => _UserSwitcherDialog(users: users),
  );
  if (picked == null) return;
  if (!context.mounted) return;
  context.read<GroupsBloc>().add(const GroupCleared());
  context.read<AuthBloc>().add(AuthLoginRequested(picked.username));
}

class _UserSwitcherDialog extends StatefulWidget {
  final List<User> users;
  const _UserSwitcherDialog({required this.users});

  @override
  State<_UserSwitcherDialog> createState() => _UserSwitcherDialogState();
}

class _UserSwitcherDialogState extends State<_UserSwitcherDialog> {
  String _query = '';

  @override
  Widget build(BuildContext context) {
    final q = _query.trim().toLowerCase();
    final filtered = q.isEmpty
        ? widget.users
        : widget.users
              .where(
                (u) =>
                    u.displayName.toLowerCase().contains(q) ||
                    u.username.toLowerCase().contains(q),
              )
              .toList(growable: false);

    return AlertDialog(
      title: const Text('Benutzer wechseln'),
      content: SizedBox(
        width: 400,
        height: 420,
        child: Column(
          children: [
            TextField(
              autofocus: true,
              decoration: const InputDecoration(
                labelText: 'Suchen',
                prefixIcon: Icon(Icons.search),
              ),
              onChanged: (v) => setState(() => _query = v),
            ),
            const SizedBox(height: 12),
            Expanded(
              child: widget.users.isEmpty
                  ? const Center(
                      child: Text('Keine weiteren Benutzer vorhanden.'),
                    )
                  : filtered.isEmpty
                  ? const Center(child: Text('Keine Treffer.'))
                  : ListView.separated(
                      itemCount: filtered.length,
                      separatorBuilder: (_, _) => const Divider(height: 1),
                      itemBuilder: (ctx, i) {
                        final u = filtered[i];
                        final initial = u.displayName.isEmpty
                            ? '?'
                            : u.displayName[0].toUpperCase();
                        return ListTile(
                          leading: CircleAvatar(child: Text(initial)),
                          title: Text(u.displayName),
                          subtitle: Text('@${u.username}'),
                          onTap: () => Navigator.of(ctx).pop(u),
                        );
                      },
                    ),
            ),
          ],
        ),
      ),
      actions: [
        TextButton(
          onPressed: () => Navigator.of(context).pop(),
          child: const Text('Abbrechen'),
        ),
      ],
    );
  }
}
