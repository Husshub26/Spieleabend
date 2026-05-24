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
      GoRoute(path: '/login', builder: (_, _) => const LoginPage()),
      GoRoute(path: '/groups', builder: (_, _) => const GroupPickerPage()),
      GoRoute(
        path: '/group/members',
        builder: (_, _) => const GroupMembersPage(),
      ),
      GoRoute(path: '/', builder: (_, _) => const HomePage()),
      GoRoute(
        path: '/next-session',
        builder: (_, _) => const NextSessionPage(),
      ),
      GoRoute(
        path: '/host-rotation',
        builder: (_, _) => const HostRotationScreen(),
      ),
      GoRoute(
        path: '/proposals',
        builder: (_, _) => const GameProposalsScreen(),
      ),
      GoRoute(path: '/voting', builder: (_, _) => const GameVotingScreen()),
      GoRoute(path: '/rating', builder: (_, _) => const EveningRatingScreen()),
      GoRoute(
        path: '/quick-message',
        builder: (_, _) => const QuickMessageScreen(),
      ),
      GoRoute(
        path: '/cuisine-reminder',
        builder: (_, _) => const CuisineReminderScreen(),
      ),
      GoRoute(
        path: '/cuisine-summary',
        builder: (_, _) => const CuisineSummaryScreen(),
      ),
      GoRoute(path: '/menu-order', builder: (_, _) => const MenuOrderScreen()),
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
