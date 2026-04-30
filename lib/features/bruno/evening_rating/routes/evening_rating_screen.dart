// Feature 5 (Bruno): Bewertung im Anschluss an den Termin.
import 'package:flutter/material.dart';

import '../../../../app/error_handler.dart';
import '../../../../components/feature_page.dart';

class EveningRatingScreen extends StatefulWidget {
  const EveningRatingScreen({super.key});

  @override
  State<EveningRatingScreen> createState() => _EveningRatingScreenState();
}

class _EveningRatingScreenState extends State<EveningRatingScreen> {
  int host = 4, food = 4, evening = 4;

  @override
  Widget build(BuildContext context) {
    return FeaturePage(
      title: 'Abend bewerten',
      icon: Icons.star_outline_rounded,
      subtitle: 'Bewerte Gastgeber:in, Essen und den Abend insgesamt.',
      child: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            _RatingRow(
              label: 'Gastgeber:in',
              value: host,
              onChanged: (v) => setState(() => host = v),
            ),
            const SizedBox(height: 12),
            _RatingRow(
              label: 'Essen',
              value: food,
              onChanged: (v) => setState(() => food = v),
            ),
            const SizedBox(height: 12),
            _RatingRow(
              label: 'Abend insgesamt',
              value: evening,
              onChanged: (v) => setState(() => evening = v),
            ),
            const SizedBox(height: 16),
            const SectionCard(
              child: TextField(
                maxLines: 4,
                decoration: InputDecoration(
                  hintText: 'Kommentar (optional)',
                  border: InputBorder.none,
                ),
              ),
            ),
            const SizedBox(height: 16),
            FilledButton.icon(
              icon: const Icon(Icons.send),
              label: const Text('Bewertung absenden'),
              onPressed: () => guard(context, () async {
                throw FeatureNotImplementedError('Bewertung absenden');
              }),
            ),
          ],
        ),
      ),
    );
  }
}

class _RatingRow extends StatelessWidget {
  final String label;
  final int value;
  final ValueChanged<int> onChanged;
  const _RatingRow({
    required this.label,
    required this.value,
    required this.onChanged,
  });

  @override
  Widget build(BuildContext context) {
    return SectionCard(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(label, style: Theme.of(context).textTheme.titleMedium),
          const SizedBox(height: 4),
          Row(
            children: [
              for (var i = 1; i <= 5; i++)
                IconButton(
                  onPressed: () => onChanged(i),
                  icon: Icon(
                    i <= value ? Icons.star_rounded : Icons.star_border_rounded,
                    color: Colors.amber,
                    size: 32,
                  ),
                ),
            ],
          ),
        ],
      ),
    );
  }
}
