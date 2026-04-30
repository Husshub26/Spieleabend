// Feature 7 (Chris): Erinnerung an Auswahl der Lieblingsessensrichtung.
import 'package:flutter/material.dart';

import '../../../../app/error_handler.dart';
import '../../../../components/feature_page.dart';
import '../../../../components/cuisine_label.dart';
import '../../../../api/prisma_client.dart';

class CuisineReminderScreen extends StatefulWidget {
  const CuisineReminderScreen({super.key});

  @override
  State<CuisineReminderScreen> createState() => _CuisineReminderScreenState();
}

class _CuisineReminderScreenState extends State<CuisineReminderScreen> {
  final Set<CuisineType> _selected = {};

  @override
  Widget build(BuildContext context) {
    return FeaturePage(
      title: 'Lieblingsessen wählen',
      icon: Icons.restaurant_menu_outlined,
      subtitle: 'Welche Essensrichtungen kommen für dich in Frage?',
      child: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            SectionCard(
              child: Wrap(
                spacing: 8,
                runSpacing: 8,
                children: [
                  for (final c in CuisineType.values)
                    FilterChip(
                      label: Text(c.label),
                      selected: _selected.contains(c),
                      onSelected: (v) => setState(() {
                        if (v) {
                          _selected.add(c);
                        } else {
                          _selected.remove(c);
                        }
                      }),
                    ),
                ],
              ),
            ),
            const SizedBox(height: 12),
            FilledButton.icon(
              icon: const Icon(Icons.save_outlined),
              label: const Text('Auswahl speichern'),
              onPressed: () => guard(context, () async {
                throw FeatureNotImplementedError('Cuisine-Auswahl speichern');
              }),
            ),
          ],
        ),
      ),
    );
  }
}
