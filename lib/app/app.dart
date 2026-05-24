import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_localizations/flutter_localizations.dart';
import 'package:intl/date_symbol_data_local.dart';

import '../api/prisma_client.dart';
import '../features/auth/bloc.dart';
import '../features/groups/bloc.dart';
import 'router.dart';
import 'theme.dart';

class SpieleabendApp extends StatefulWidget {
  final PrismaClient prisma;
  const SpieleabendApp({super.key, required this.prisma});

  @override
  State<SpieleabendApp> createState() => _SpieleabendAppState();
}

class _SpieleabendAppState extends State<SpieleabendApp> {
  late final AuthBloc _auth;
  late final GroupsBloc _groups;

  @override
  void initState() {
    super.initState();
    initializeDateFormatting('de_DE');
    _auth = AuthBloc(db: widget.prisma)..add(const AuthStarted());
    _groups = GroupsBloc(db: widget.prisma);
  }

  @override
  void dispose() {
    _auth.close();
    _groups.close();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return RepositoryProvider<PrismaClient>.value(
      value: widget.prisma,
      child: MultiBlocProvider(
        providers: [
          BlocProvider<AuthBloc>.value(value: _auth),
          BlocProvider<GroupsBloc>.value(value: _groups),
        ],
        child: BlocListener<AuthBloc, AuthState>(
          listenWhen: (a, b) => a.currentUser?.id != b.currentUser?.id,
          listener: (context, state) {
            _groups.add(GroupsUserChanged(state.currentUser));
          },
          child: MaterialApp.router(
            title: 'Spieleabend',
            debugShowCheckedModeBanner: false,
            theme: buildAppTheme(),
            routerConfig: buildRouter(_auth, _groups),
            localizationsDelegates: const [
              GlobalMaterialLocalizations.delegate,
              GlobalWidgetsLocalizations.delegate,
              GlobalCupertinoLocalizations.delegate,
            ],
            supportedLocales: const [Locale('de', 'DE'), Locale('en')],
          ),
        ),
      ),
    );
  }
}
