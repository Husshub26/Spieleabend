// Feature 6 (Bruno): Schnelle Nachricht an alle Spieler:innen.
import 'package:flutter/material.dart';

import '../../../../app/error_handler.dart';
import '../../../../components/feature_page.dart';

const _quickReplies = [
  'Ich verspäte mich um 10 Minuten.',
  'Ich verspäte mich um 30 Minuten.',
  'Ich kann heute leider nicht kommen.',
  'Bin schon unterwegs!',
];

class QuickMessageScreen extends StatelessWidget {
  const QuickMessageScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return FeaturePage(
      title: 'Schnellnachricht',
      icon: Icons.flash_on_outlined,
      subtitle: 'Sende allen anderen Spieler:innen eine kurze Notiz.',
      child: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            for (final preset in _quickReplies) ...[
              SectionCard(
                child: ListTile(
                  contentPadding: EdgeInsets.zero,
                  leading: const Icon(Icons.bolt_outlined),
                  title: Text(preset),
                  trailing: const Icon(Icons.send_outlined),
                  onTap: () => guard(context, () async {
                    throw FeatureNotImplementedError('Nachricht senden');
                  }),
                ),
              ),
              const SizedBox(height: 12),
            ],
            const SizedBox(height: 8),
            const SectionCard(
              child: TextField(
                decoration: InputDecoration(
                  hintText: 'Eigene Nachricht…',
                  border: InputBorder.none,
                ),
              ),
            ),
            const SizedBox(height: 12),
            FilledButton.icon(
              icon: const Icon(Icons.send),
              label: const Text('An alle senden'),
              onPressed: () => guard(context, () async {
                throw FeatureNotImplementedError('Eigene Nachricht senden');
              }),
            ),
          ],
        ),
      ),
    );
  }
}
