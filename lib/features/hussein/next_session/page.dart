import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:intl/intl.dart';

import '../../../api/prisma_client.dart';
import '../../../app/error_handler.dart';
import '../../../components/feature_page.dart';
import '../../groups/bloc.dart';
import 'bloc.dart';

class NextSessionPage extends StatelessWidget {
  const NextSessionPage({super.key});

  @override
  Widget build(BuildContext context) {
    final groupId = context.read<GroupsBloc>().state.activeGroup!.id;
    return BlocProvider(
      create: (ctx) =>
          NextSessionBloc(ctx.read<PrismaClient>())
            ..add(NextSessionLoadRequested(groupId)),
      child: const _NextSessionView(),
    );
  }
}

class _NextSessionView extends StatelessWidget {
  const _NextSessionView();

  @override
  Widget build(BuildContext context) {
    return FeaturePage(
      title: 'Nächster Spieltermin',
      icon: Icons.event_available_outlined,
      subtitle: 'Wann und wo wir uns das nächste Mal treffen.',
      child: BlocBuilder<NextSessionBloc, NextSessionState>(
        builder: (context, state) {
          return switch (state) {
            NextSessionLoading() => const Center(
              child: CircularProgressIndicator(),
            ),
            NextSessionError(:final message) => EmptyState(
              icon: Icons.error_outline,
              title: 'Fehler',
              message: message,
            ),
            NextSessionLoaded(:final session) when session == null =>
              const EmptyState(
                icon: Icons.event_busy_outlined,
                title: 'Kein Termin geplant',
                message: 'Es ist aktuell kein Spieleabend angesetzt.',
              ),
            NextSessionLoaded(:final session, :final host) =>
              _NextSessionDetails(session: session!, host: host),
          };
        },
      ),
    );
  }
}

class _NextSessionDetails extends StatelessWidget {
  final GameSession session;
  final User? host;
  const _NextSessionDetails({required this.session, required this.host});

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          SectionCard(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  DateFormat(
                    "EEEE, d. MMMM y 'um' HH:mm 'Uhr'",
                    'de_DE',
                  ).format(session.scheduledAt),
                  style: Theme.of(context).textTheme.titleLarge,
                ),
                const SizedBox(height: 12),
                _Row(icon: Icons.location_on_outlined, text: session.location),
                const SizedBox(height: 8),
                _Row(
                  icon: Icons.person_outline,
                  text: 'Gastgeber:in: ${host?.displayName ?? '—'}',
                ),
                const SizedBox(height: 8),
                _Row(
                  icon: Icons.timer_outlined,
                  text:
                      'In ${session.scheduledAt.difference(DateTime.now()).inHours} Stunden',
                ),
              ],
            ),
          ),
          const SizedBox(height: 16),
          FilledButton.icon(
            icon: const Icon(Icons.calendar_month_outlined),
            label: const Text('Im Kalender speichern'),
            onPressed: () => guard(context, () async {
              throw FeatureNotImplementedError('Kalenderexport');
            }),
          ),
        ],
      ),
    );
  }
}

class _Row extends StatelessWidget {
  final IconData icon;
  final String text;
  const _Row({required this.icon, required this.text});
  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Icon(icon, size: 18, color: Theme.of(context).colorScheme.primary),
        const SizedBox(width: 8),
        Expanded(child: Text(text)),
      ],
    );
  }
}
