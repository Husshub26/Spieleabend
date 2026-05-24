// Feature 4 (Bruno): Im Vorfeld über Spiele abstimmen.
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../../../app/error_handler.dart';
import '../../../../components/feature_page.dart';
import '../../../../api/prisma_client.dart';
import '../../../groups/bloc.dart';

class GameVotingScreen extends StatelessWidget {
  const GameVotingScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final db = context.read<PrismaClient>();
    final groupId = context.read<GroupsBloc>().state.activeGroup!.id;
    return FeaturePage(
      title: 'Spiele-Abstimmung',
      icon: Icons.how_to_vote_outlined,
      subtitle:
          'Stimme über die vorgeschlagenen Spiele ab, bevor der Termin startet.',
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
          if (proposals.isEmpty) {
            return const EmptyState(
              icon: Icons.ballot_outlined,
              title: 'Nichts zu wählen',
              message: 'Sobald Vorschläge vorliegen, kannst du hier abstimmen.',
            );
          }
          return ListView.separated(
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
                      style: Theme.of(context).textTheme.titleMedium,
                    ),
                    const SizedBox(height: 8),
                    Row(
                      children: [
                        for (final entry in const [
                          (Icons.thumb_down_outlined, 'Nö', -1),
                          (Icons.horizontal_rule, 'Egal', 0),
                          (Icons.thumb_up_outlined, 'Ja!', 1),
                        ])
                          Padding(
                            padding: const EdgeInsets.only(right: 8),
                            child: OutlinedButton.icon(
                              icon: Icon(entry.$1, size: 16),
                              label: Text(entry.$2),
                              onPressed: () => guard(context, () async {
                                throw FeatureNotImplementedError(
                                  'Stimme abgeben',
                                );
                              }),
                            ),
                          ),
                      ],
                    ),
                  ],
                ),
              );
            },
          );
        },
      ),
    );
  }
}
