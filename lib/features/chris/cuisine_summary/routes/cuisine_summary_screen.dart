// Feature 8 (Chris): Gastgeber:in über mehrheitliche Essensrichtung informieren.
import 'package:flutter/material.dart';

import '../../../../app/error_handler.dart';
import '../../../../components/feature_page.dart';
import '../../../../components/cuisine_label.dart';
import '../../../../api/prisma_client.dart';

class CuisineSummaryScreen extends StatelessWidget {
  const CuisineSummaryScreen({super.key});

  @override
  Widget build(BuildContext context) {
    // Beispiel-Statistik (Logik bewusst nicht implementiert).
    final demo = <CuisineType, int>{
      CuisineType.italian: 3,
      CuisineType.asian: 2,
      CuisineType.burger: 1,
    };
    final total = demo.values.fold<int>(0, (a, b) => a + b);

    return FeaturePage(
      title: 'Gewünschte Essensrichtung',
      icon: Icons.poll_outlined,
      subtitle: 'Übersicht für die Gastgeberin / den Gastgeber.',
      child: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            for (final entry in demo.entries) ...[
              SectionCard(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Row(
                      children: [
                        Expanded(
                          child: Text(
                            entry.key.label,
                            style: Theme.of(context).textTheme.titleMedium,
                          ),
                        ),
                        Text('${entry.value} / $total'),
                      ],
                    ),
                    const SizedBox(height: 8),
                    LinearProgressIndicator(
                      value: entry.value / total,
                      minHeight: 8,
                    ),
                  ],
                ),
              ),
              const SizedBox(height: 12),
            ],
            FilledButton.icon(
              icon: const Icon(Icons.local_shipping_outlined),
              label: const Text('Lieferdienst auswählen'),
              onPressed: () => guard(context, () async {
                throw FeatureNotImplementedError('Lieferdienst auswählen');
              }),
            ),
          ],
        ),
      ),
    );
  }
}
