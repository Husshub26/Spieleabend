// Feature 2 (Hussein): "...turnusmäßig bei einem:einer anderen Spieler:in..."
import 'package:flutter/material.dart';

import '../../../../app/error_handler.dart';
import '../../../../components/feature_page.dart';

class HostRotationScreen extends StatelessWidget {
  const HostRotationScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return FeaturePage(
      title: 'Gastgeber-Rotation',
      icon: Icons.repeat_rounded,
      subtitle:
          'Reihenfolge, in der die Gruppe sich gegenseitig besucht – damit der Aufwand fair verteilt ist.',
      child: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            const SectionCard(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  _RotationRow(
                    position: 1,
                    name: 'Bruno',
                    status: 'Diese Woche',
                  ),
                  Divider(height: 24),
                  _RotationRow(
                    position: 2,
                    name: 'Hussein',
                    status: 'Nächste Runde',
                  ),
                  Divider(height: 24),
                  _RotationRow(
                    position: 3,
                    name: 'Chris',
                    status: 'Übernächste Runde',
                  ),
                ],
              ),
            ),
            const SizedBox(height: 16),
            FilledButton.icon(
              icon: const Icon(Icons.swap_horiz),
              label: const Text('Mit anderem Spieler tauschen'),
              onPressed: () => guard(context, () async {
                throw FeatureNotImplementedError('Rotations-Tausch');
              }),
            ),
            const SizedBox(height: 8),
            OutlinedButton.icon(
              icon: const Icon(Icons.event_repeat),
              label: const Text('Rotation neu generieren'),
              onPressed: () => guard(context, () async {
                throw FeatureNotImplementedError('Rotation neu generieren');
              }),
            ),
          ],
        ),
      ),
    );
  }
}

class _RotationRow extends StatelessWidget {
  final int position;
  final String name;
  final String status;
  const _RotationRow({
    required this.position,
    required this.name,
    required this.status,
  });
  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        CircleAvatar(child: Text('$position')),
        const SizedBox(width: 12),
        Expanded(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(name, style: Theme.of(context).textTheme.titleMedium),
              Text(status, style: Theme.of(context).textTheme.bodySmall),
            ],
          ),
        ),
      ],
    );
  }
}
