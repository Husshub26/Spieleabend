// Feature 9 (Chris): Menü des Lieferdienstes ansehen / Bestellung übermitteln.
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../../../app/error_handler.dart';
import '../../../../components/feature_page.dart';
import '../../../../components/cuisine_label.dart';
import '../../../../api/prisma_client.dart';

class _ServiceWithMenu {
  final DeliveryService service;
  final List<MenuItem> items;
  _ServiceWithMenu(this.service, this.items);
}

class MenuOrderScreen extends StatelessWidget {
  const MenuOrderScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final db = context.read<PrismaClient>();
    return FeaturePage(
      title: 'Menü & Bestellung',
      icon: Icons.menu_book_outlined,
      subtitle:
          'Sieh dir das Menü des ausgewählten Lieferdienstes an und übermittle deine Bestellung.',
      child: FutureBuilder<_ServiceWithMenu?>(
        future: () async {
          final services = await db.deliveryService.findMany();
          if (services.isEmpty) return null;
          final selected = services.first;
          final items = await db.menuItem.findMany(
            where: MenuItemWhereInput(
              deliveryServiceId: StringFilter(equals: selected.id),
            ),
          );
          return _ServiceWithMenu(selected, items);
        }(),
        builder: (context, snapshot) {
          if (snapshot.connectionState != ConnectionState.done) {
            return const Center(child: CircularProgressIndicator());
          }
          final data = snapshot.data;
          if (data == null) {
            return const EmptyState(
              icon: Icons.no_meals_outlined,
              title: 'Kein Lieferdienst gewählt',
              message:
                  'Sobald die Gastgeberin / der Gastgeber einen Lieferdienst auswählt, erscheint hier das Menü.',
            );
          }
          final selected = data.service;
          final items = data.items;
          return Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: [
              SectionCard(
                child: Row(
                  children: [
                    const Icon(Icons.storefront_outlined, size: 32),
                    const SizedBox(width: 12),
                    Expanded(
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            selected.name,
                            style: Theme.of(context).textTheme.titleMedium,
                          ),
                          Text(
                            'Küche: ${selected.cuisine.label}',
                            style: Theme.of(context).textTheme.bodySmall,
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
              const SizedBox(height: 12),
              Expanded(
                child: ListView.separated(
                  itemCount: items.length,
                  separatorBuilder: (_, __) => const SizedBox(height: 8),
                  itemBuilder: (_, i) {
                    final m = items[i];
                    return SectionCard(
                      child: Row(
                        children: [
                          Expanded(
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text(
                                  m.name,
                                  style: Theme.of(context).textTheme.titleSmall,
                                ),
                                Text(
                                  m.description,
                                  style: Theme.of(context).textTheme.bodySmall,
                                ),
                              ],
                            ),
                          ),
                          Text('${m.priceEur.toStringAsFixed(2)} €'),
                          IconButton(
                            icon: const Icon(Icons.add_shopping_cart_outlined),
                            onPressed: () => guard(context, () async {
                              throw FeatureNotImplementedError(
                                'Zum Warenkorb hinzufügen',
                              );
                            }),
                          ),
                        ],
                      ),
                    );
                  },
                ),
              ),
              const SizedBox(height: 12),
              FilledButton.icon(
                icon: const Icon(Icons.send),
                label: const Text('Bestellung übermitteln'),
                onPressed: () => guard(context, () async {
                  throw FeatureNotImplementedError('Bestellung übermitteln');
                }),
              ),
            ],
          );
        },
      ),
    );
  }
}
