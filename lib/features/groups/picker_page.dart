import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:go_router/go_router.dart';

import '../../components/feature_page.dart';
import '../auth/bloc.dart';
import 'bloc.dart';

class GroupPickerPage extends StatelessWidget {
  const GroupPickerPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Gruppe auswählen'),
        actions: [
          BlocBuilder<AuthBloc, AuthState>(
            buildWhen: (a, b) => a.currentUser?.id != b.currentUser?.id,
            builder: (context, state) {
              final scheme = Theme.of(context).colorScheme;
              final name = state.currentUser?.displayName ?? '';
              return PopupMenuButton<String>(
                tooltip: 'Konto',
                icon: CircleAvatar(
                  backgroundColor: scheme.primaryContainer,
                  child: Text(
                    name.isEmpty ? '?' : name[0].toUpperCase(),
                    style: TextStyle(color: scheme.onPrimaryContainer),
                  ),
                ),
                itemBuilder: (_) => [
                  PopupMenuItem(
                    enabled: false,
                    child: Text('Eingeloggt als $name'),
                  ),
                  const PopupMenuDivider(),
                  const PopupMenuItem(
                    value: 'logout',
                    child: Row(
                      children: [
                        Icon(Icons.logout),
                        SizedBox(width: 8),
                        Text('Abmelden'),
                      ],
                    ),
                  ),
                ],
                onSelected: (v) {
                  if (v == 'logout') {
                    context.read<GroupsBloc>().add(const GroupCleared());
                    context.read<AuthBloc>().add(const AuthLogoutRequested());
                  }
                },
              );
            },
          ),
          const SizedBox(width: 8),
        ],
      ),
      body: SafeArea(
        child: BlocConsumer<GroupsBloc, GroupsState>(
          listenWhen: (a, b) => a.activeGroup?.id != b.activeGroup?.id,
          listener: (context, state) {
            if (state.activeGroup != null) context.go('/');
          },
          builder: (context, state) {
            if (state.loading) {
              return const Center(child: CircularProgressIndicator());
            }
            return Padding(
              padding: const EdgeInsets.all(20),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.stretch,
                children: [
                  Text(
                    'Wähle eine Gruppe oder erstelle eine neue.',
                    style: Theme.of(context).textTheme.bodyMedium,
                  ),
                  const SizedBox(height: 16),
                  if (state.errorMessage != null) ...[
                    _Banner.error(state.errorMessage!),
                    const SizedBox(height: 12),
                  ],
                  Expanded(
                    child: state.groups.isEmpty
                        ? const EmptyState(
                            icon: Icons.groups_outlined,
                            title: 'Du bist in keiner Gruppe',
                            message:
                                'Erstelle eine neue Gruppe, um loszulegen, oder lass dich von jemandem einladen.',
                          )
                        : ListView.separated(
                            itemCount: state.groups.length,
                            separatorBuilder: (_, __) =>
                                const SizedBox(height: 8),
                            itemBuilder: (_, i) {
                              final g = state.groups[i];
                              return Card(
                                child: ListTile(
                                  leading: const Icon(Icons.groups_outlined),
                                  title: Text(g.name),
                                  trailing: const Icon(Icons.chevron_right),
                                  onTap: () => context.read<GroupsBloc>().add(
                                    GroupSelected(g.id),
                                  ),
                                ),
                              );
                            },
                          ),
                  ),
                  const SizedBox(height: 12),
                  FilledButton.icon(
                    icon: const Icon(Icons.add),
                    label: const Text('Neue Gruppe erstellen'),
                    onPressed: () => _showCreateDialog(context),
                  ),
                ],
              ),
            );
          },
        ),
      ),
    );
  }

  Future<void> _showCreateDialog(BuildContext context) async {
    final controller = TextEditingController();
    final bloc = context.read<GroupsBloc>();
    final ok = await showDialog<bool>(
      context: context,
      builder: (ctx) => AlertDialog(
        title: const Text('Neue Gruppe'),
        content: TextField(
          controller: controller,
          autofocus: true,
          decoration: const InputDecoration(labelText: 'Gruppenname'),
          onSubmitted: (_) => Navigator.of(ctx).pop(true),
        ),
        actions: [
          TextButton(
            onPressed: () => Navigator.of(ctx).pop(false),
            child: const Text('Abbrechen'),
          ),
          FilledButton(
            onPressed: () => Navigator.of(ctx).pop(true),
            child: const Text('Erstellen'),
          ),
        ],
      ),
    );
    if (ok == true) bloc.add(GroupCreateRequested(controller.text));
  }
}

class _Banner extends StatelessWidget {
  final String text;
  final Color color;
  final IconData icon;
  const _Banner._(this.text, this.color, this.icon);
  factory _Banner.error(String t) =>
      _Banner._(t, Colors.red.shade100, Icons.error_outline);
  factory _Banner.info(String t) =>
      _Banner._(t, Colors.green.shade100, Icons.check_circle_outline);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(12),
      decoration: BoxDecoration(
        color: color,
        borderRadius: BorderRadius.circular(8),
      ),
      child: Row(
        children: [
          Icon(icon, size: 20),
          const SizedBox(width: 8),
          Expanded(child: Text(text)),
        ],
      ),
    );
  }

  static Widget infoOf(String t) => _Banner.info(t);
  static Widget errorOf(String t) => _Banner.error(t);
}

/// Re-exported helper so `members_page.dart` can show the same banners.
class GroupBanner {
  static Widget error(String t) => _Banner.errorOf(t);
  static Widget info(String t) => _Banner.infoOf(t);
}
