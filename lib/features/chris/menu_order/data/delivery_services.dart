import '../../../../api/prisma_client.dart';

// Methode, die die Datenbankeinträge für die Lieferservices hinzufügt (jeweils ein Lieferservice mit zwei verschiedenen Gerichten pro Essensrichtung)
Future<void> seedDeliveryServicesIfNeeded(PrismaClient db) async {
  final existing = await db.deliveryService.findMany();

  if (existing.isNotEmpty) return;

  final italian = await db.deliveryService.create(
    data: CreateDeliveryServiceInput(
      name: 'Ristorante Classico',
      cuisine: CuisineType.italian,
    ),
  );

  await db.menuItem.create(
    data: CreateMenuItemInput(
      deliveryServiceId: italian.id,
      name: 'Pizza Margherita',
      description: 'Tomate, Mozzarella und Basilikum',
      priceEur: 9.50,
    ),
  );

  await db.menuItem.create(
    data: CreateMenuItemInput(
      deliveryServiceId: italian.id,
      name: 'Carpaccio',
      description: 'Rindfleisch mit Parmesan nund Rucola',
      priceEur: 10.90,
    ),
  );

  final burger = await db.deliveryService.create(
    data: CreateDeliveryServiceInput(
      name: 'McDonalds',
      cuisine: CuisineType.burger,
    ),
  );

  await db.menuItem.create(
    data: CreateMenuItemInput(
      deliveryServiceId: burger.id,
      name: 'Big Mac',
      description: 'Doppelt Rindfleisch und Käse',
      priceEur: 11.50,
    ),
  );

  await db.menuItem.create(
    data: CreateMenuItemInput(
      deliveryServiceId: burger.id,
      name: 'McCrispy',
      description: 'Knuspriger Chickenburger',
      priceEur: 10.50,
    ),
  );

  final asian = await db.deliveryService.create(
    data: CreateDeliveryServiceInput(
      name: 'Asia Family',
      cuisine: CuisineType.asian,
    ),
  );

  await db.menuItem.create(
    data: CreateMenuItemInput(
      deliveryServiceId: asian.id,
      name: 'Gebratene Nudeln',
      description: 'Nudeln mit Gemüse und Sojasauce',
      priceEur: 8.90,
    ),
  );

  await db.menuItem.create(
    data: CreateMenuItemInput(
      deliveryServiceId: asian.id,
      name: 'Reisplatte',
      description: 'Gebratener reis mit Ente & Süß-Sauer-Soße',
      priceEur: 12.90,
    ),
  );

  final mexican = await db.deliveryService.create(
    data: CreateDeliveryServiceInput(
      name: 'El Burro',
      cuisine: CuisineType.mexican,
    ),
  );

  await db.menuItem.create(
    data: CreateMenuItemInput(
      deliveryServiceId: mexican.id,
      name: 'Chili sin Carne',
      description: 'Aus saisonalem Gemüse und Kichererbsen',
      priceEur: 9.90,
    ),
  );

  await db.menuItem.create(
    data: CreateMenuItemInput(
      deliveryServiceId: mexican.id,
      name: 'Nachos Con Frijoles',
      description: 'Nachos mit schwarzen Bohnen',
      priceEur: 11.20,
    ),
  );

  final indian = await db.deliveryService.create(
    data: CreateDeliveryServiceInput(
      name: 'Curry Haus',
      cuisine: CuisineType.indian,
    ),
  );

  await db.menuItem.create(
    data: CreateMenuItemInput(
      deliveryServiceId: indian.id,
      name: 'Chicken Curry',
      description: 'Mildes Curry mit Reis',
      priceEur: 12.50,
    ),
  );

  await db.menuItem.create(
    data: CreateMenuItemInput(
      deliveryServiceId: indian.id,
      name: 'Punjab Tandoori',
      description: 'Linsengericht mit Gewürzen und Reis',
      priceEur: 10.80,
    ),
  );

  final vegan = await db.deliveryService.create(
    data: CreateDeliveryServiceInput(
      name: 'Green Bowl',
      cuisine: CuisineType.vegan,
    ),
  );

  await db.menuItem.create(
    data: CreateMenuItemInput(
      deliveryServiceId: vegan.id,
      name: 'Nan',
      description: 'Fladednbrot aus Weizenmehl',
      priceEur: 2.20,
    ),
  );

  await db.menuItem.create(
    data: CreateMenuItemInput(
      deliveryServiceId: vegan.id,
      name: 'Chicken Madras',
      description:
          'Hähnchenbrustfilet mit frischen Champignongs in scharfer Sauce',
      priceEur: 9.80,
    ),
  );

  final sushi = await db.deliveryService.create(
    data: CreateDeliveryServiceInput(
      name: 'Zenrolls',
      cuisine: CuisineType.sushi,
    ),
  );

  await db.menuItem.create(
    data: CreateMenuItemInput(
      deliveryServiceId: sushi.id,
      name: 'Maki Mix',
      description: 'Gemischte Maki-Rollen',
      priceEur: 11.90,
    ),
  );

  await db.menuItem.create(
    data: CreateMenuItemInput(
      deliveryServiceId: sushi.id,
      name: 'Nigiri Set',
      description: 'Auswahl verschiedener Nigiri',
      priceEur: 14.50,
    ),
  );
}
