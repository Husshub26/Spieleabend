import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:go_router/go_router.dart';

import '../features/auth/bloc.dart';
import '../features/groups/bloc.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    final scheme = Theme.of(context).colorScheme;
    return Scaffold(
      appBar: AppBar(
        title: BlocBuilder<GroupsBloc, GroupsState>(
          buildWhen: (a, b) => a.activeGroup?.id != b.activeGroup?.id,
          builder: (_, state) => Text(state.activeGroup?.name ?? 'Spieleabend'),
        ),
        actions: [
          IconButton(
            tooltip: 'Mitglieder & Einladungen',
            icon: const Icon(Icons.groups_outlined),
            onPressed: () => context.push('/group/members'),
          ),
          IconButton(
            tooltip: 'Andere Gruppe wählen',
            icon: const Icon(Icons.swap_horiz),
            onPressed: () {
              context.read<GroupsBloc>().add(const GroupCleared());
              context.go('/groups');
            },
          ),
          BlocBuilder<AuthBloc, AuthState>(
            builder: (context, state) {
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
        child: ListView(
          padding: const EdgeInsets.all(20),
          children: [
            const _GroupInfoCard(),
            const SizedBox(height: 16),
            const _AuthorSection(
              author: 'Hussein',
              entries: [
                _Entry(
                  'Nächster Spieltermin',
                  'Wann & wo wir uns treffen',
                  Icons.event_available_outlined,
                  '/next-session',
                ),
                _Entry(
                  'Gastgeber-Rotation',
                  'Wer ist als Nächstes dran',
                  Icons.repeat_rounded,
                  '/host-rotation',
                ),
                _Entry(
                  'Spielvorschläge',
                  'Spiele für den Abend einreichen',
                  Icons.lightbulb_outline,
                  '/proposals',
                ),
              ],
            ),
            const SizedBox(height: 16),
            const _AuthorSection(
              author: 'Bruno',
              entries: [
                _Entry(
                  'Spiele-Abstimmung',
                  'Vor dem Termin abstimmen',
                  Icons.how_to_vote_outlined,
                  '/voting',
                ),
                _Entry(
                  'Abend bewerten',
                  'Gastgeber:in, Essen, Abend',
                  Icons.star_outline_rounded,
                  '/rating',
                ),
                _Entry(
                  'Schnellnachricht',
                  'Allen kurz Bescheid sagen',
                  Icons.flash_on_outlined,
                  '/quick-message',
                ),
              ],
            ),
            const SizedBox(height: 16),
            const _AuthorSection(
              author: 'Chris',
              entries: [
                _Entry(
                  'Lieblingsessen',
                  'Essensrichtungen wählen',
                  Icons.restaurant_menu_outlined,
                  '/cuisine-reminder',
                ),
                _Entry(
                  'Mehrheitswahl Essen',
                  'Übersicht für Gastgeber:in',
                  Icons.poll_outlined,
                  '/cuisine-summary',
                ),
                _Entry(
                  'Menü & Bestellung',
                  'Lieferdienst-Menü ansehen',
                  Icons.menu_book_outlined,
                  '/menu-order',
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}

class _GroupInfoCard extends StatelessWidget {
  const _GroupInfoCard();

  @override
  Widget build(BuildContext context) {
    final scheme = Theme.of(context).colorScheme;
    return BlocBuilder<GroupsBloc, GroupsState>(
      builder: (context, state) {
        final group = state.activeGroup;
        if (group == null) return const SizedBox.shrink();
        final creatorName = state.activeCreator?.displayName ?? '…';
        final count = state.activeMembers.length;
        return Card(
          color: scheme.primaryContainer,
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 12),
            child: Wrap(
              spacing: 8,
              runSpacing: 4,
              children: [
                _InfoChip(
                  icon: Icons.shield_outlined,
                  label:
                      'Leitung: $creatorName'
                      '${state.isActiveGroupOwner ? ' (du)' : ''}',
                ),
                _InfoChip(
                  icon: Icons.people_alt_outlined,
                  label: '$count Mitglied${count == 1 ? '' : 'er'}',
                ),
              ],
            ),
          ),
        );
      },
    );
  }
}

class _InfoChip extends StatelessWidget {
  final IconData icon;
  final String label;
  const _InfoChip({required this.icon, required this.label});

  @override
  Widget build(BuildContext context) {
    final scheme = Theme.of(context).colorScheme;
    return Chip(
      avatar: Icon(icon, size: 18, color: scheme.onPrimaryContainer),
      label: Text(label, style: TextStyle(color: scheme.onPrimaryContainer)),
      backgroundColor: scheme.primaryContainer.withValues(alpha: 0.6),
      side: BorderSide(color: scheme.onPrimaryContainer.withValues(alpha: 0.2)),
      visualDensity: VisualDensity.compact,
    );
  }
}

class _Entry {
  final String title;
  final String subtitle;
  final IconData icon;
  final String route;
  const _Entry(this.title, this.subtitle, this.icon, this.route);
}

class _AuthorSection extends StatelessWidget {
  final String author;
  final List<_Entry> entries;
  const _AuthorSection({required this.author, required this.entries});

  @override
  Widget build(BuildContext context) {
    final scheme = Theme.of(context).colorScheme;
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Padding(
          padding: const EdgeInsets.fromLTRB(4, 0, 4, 8),
          child: Row(
            children: [
              Container(
                width: 8,
                height: 24,
                decoration: BoxDecoration(
                  color: scheme.primary,
                  borderRadius: BorderRadius.circular(4),
                ),
              ),
              const SizedBox(width: 8),
              Text(
                'Modul von $author',
                style: Theme.of(context).textTheme.titleMedium,
              ),
            ],
          ),
        ),
        Card(
          clipBehavior: Clip.antiAlias,
          child: Column(
            children: [
              for (var i = 0; i < entries.length; i++) ...[
                if (i > 0) const Divider(height: 1),
                ListTile(
                  leading: Icon(entries[i].icon, color: scheme.primary),
                  title: Text(entries[i].title),
                  subtitle: Text(entries[i].subtitle),
                  trailing: const Icon(Icons.chevron_right),
                  onTap: () => context.push(entries[i].route),
                ),
              ],
            ],
          ),
        ),
      ],
    );
  }
}
