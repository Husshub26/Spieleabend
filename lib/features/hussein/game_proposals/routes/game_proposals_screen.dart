// Feature 3 (Hussein): Spielvorschläge einreichen.
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../../../app/error_handler.dart';
import '../../../../components/feature_page.dart';
import '../../../../api/prisma_client.dart';
import '../../../groups/bloc.dart';

class GameProposalsScreen extends StatelessWidget {
  const GameProposalsScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final db = context.read<PrismaClient>();
    final groupId = context.read<GroupsBloc>().state.activeGroup!.id;
    return FeaturePage(
      title: 'Spielvorschläge',
      icon: Icons.lightbulb_outline,
      subtitle:
          'Schlage Spiele vor, die ihr beim nächsten Termin spielen könntet.',
      child: FutureBuilder<List<GameProposal>>(
        future: () async {
          final session = await db.gameSession.findFirst(
            where: GameSessionWhereInput(
              groupId: StringFilter(equals: groupId),
              finished: const BooleanFilter(equals: false),
            ),
            orderBy: const GameSessionOrderByInput(scheduledAt: SortOrder.asc),
          );
          if (session == null) return <GameProposal>[];
          return db.gameProposal.findMany(
            where: GameProposalWhereInput(
              sessionId: StringFilter(equals: session.id),
            ),
          );
        }(),
        builder: (context, snapshot) {
          if (!snapshot.hasData) {
            return const Center(child: CircularProgressIndicator());
          }
          final proposals = snapshot.data!;
          return Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: [
              Expanded(
                child: proposals.isEmpty
                    ? const EmptyState(
                        icon: Icons.inbox_outlined,
                        title: 'Noch keine Vorschläge',
                        message:
                            'Sei die Erste oder der Erste mit einem Vorschlag!',
                      )
                    : ListView.separated(
                        itemCount: proposals.length,
                        separatorBuilder: (_, __) => const SizedBox(height: 12),
                        itemBuilder: (_, i) {
                          final p = proposals[i];
                          return SectionCard(
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text(
                                  p.title,
                                  style: Theme.of(
                                    context,
                                  ).textTheme.titleMedium,
                                ),
                                const SizedBox(height: 4),
                                Text(p.description),
                              ],
                            ),
                          );
                        },
                      ),
              ),
              const SizedBox(height: 12),
              FilledButton.icon(
                icon: const Icon(Icons.add),
                label: const Text('Spiel vorschlagen'),
                onPressed: () => guard(context, () async {
                  throw FeatureNotImplementedError('Spielvorschlag erstellen');
                }),
              ),
            ],
          );
        },
      ),
    );
  }
}
