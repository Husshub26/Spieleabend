import 'dart:async';

import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

import '../features/auth/bloc.dart';
import '../features/auth/page.dart';
import '../features/bruno/evening_rating/routes/evening_rating_screen.dart';
import '../features/bruno/game_voting/routes/game_voting_screen.dart';
import '../features/bruno/quick_message/routes/quick_message_screen.dart';
import '../features/chris/cuisine_reminder/routes/cuisine_reminder_screen.dart';
import '../features/chris/cuisine_summary/routes/cuisine_summary_screen.dart';
import '../features/chris/menu_order/routes/menu_order_screen.dart';
import '../features/groups/bloc.dart';
import '../features/groups/members_page.dart';
import '../features/groups/picker_page.dart';
import '../features/hussein/game_proposals/routes/game_proposals_screen.dart';
import '../features/hussein/host_rotation/routes/host_rotation_screen.dart';
import '../features/hussein/next_session/page.dart';
import 'home_page.dart';

GoRouter buildRouter(AuthBloc auth, GroupsBloc groups) {
  return GoRouter(
    initialLocation: '/',
    refreshListenable: _MergedListenable([auth.stream, groups.stream]),
    redirect: (context, gstate) {
      final status = auth.state.status;
      final loc = gstate.matchedLocation;
      if (status == AuthStatus.unknown) return null;
      if (status != AuthStatus.loggedIn) {
        return loc == '/login' ? null : '/login';
      }
      // Logged in.
      final hasActive = groups.state.activeGroup != null;
      if (loc == '/login') return hasActive ? '/' : '/groups';
      if (!hasActive && loc != '/groups') return '/groups';
      return null;
    },
    routes: [
      GoRoute(path: '/login', builder: (_, __) => const LoginPage()),
      GoRoute(path: '/groups', builder: (_, __) => const GroupPickerPage()),
      GoRoute(
        path: '/group/members',
        builder: (_, __) => const GroupMembersPage(),
      ),
      GoRoute(path: '/', builder: (_, __) => const HomePage()),
      GoRoute(
        path: '/next-session',
        builder: (_, __) => const NextSessionPage(),
      ),
      GoRoute(
        path: '/host-rotation',
        builder: (_, __) => const HostRotationScreen(),
      ),
      GoRoute(
        path: '/proposals',
        builder: (_, __) => const GameProposalsScreen(),
      ),
      GoRoute(path: '/voting', builder: (_, __) => const GameVotingScreen()),
      GoRoute(path: '/rating', builder: (_, __) => const EveningRatingScreen()),
      GoRoute(
        path: '/quick-message',
        builder: (_, __) => const QuickMessageScreen(),
      ),
      GoRoute(
        path: '/cuisine-reminder',
        builder: (_, __) => const CuisineReminderScreen(),
      ),
      GoRoute(
        path: '/cuisine-summary',
        builder: (_, __) => const CuisineSummaryScreen(),
      ),
      GoRoute(path: '/menu-order', builder: (_, __) => const MenuOrderScreen()),
    ],
    errorBuilder: (_, state) => Scaffold(
      appBar: AppBar(title: const Text('Fehler')),
      body: Center(child: Text('Route nicht gefunden: ${state.uri}')),
    ),
  );
}

class _MergedListenable extends ChangeNotifier {
  final List<StreamSubscription<dynamic>> _subs = [];
  _MergedListenable(List<Stream<dynamic>> streams) {
    notifyListeners();
    for (final s in streams) {
      _subs.add(s.asBroadcastStream().listen((_) => notifyListeners()));
    }
  }
  @override
  void dispose() {
    for (final s in _subs) {
      s.cancel();
    }
    super.dispose();
  }
}
