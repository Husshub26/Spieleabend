import 'package:flutter/material.dart';

import 'api/prisma_client.dart';
import 'api/seed_data.dart';
import 'app/app.dart';

Future<void> main() async {
  WidgetsFlutterBinding.ensureInitialized();
  final prisma = await openInMemoryPrismaClient();
  await seedDatabase(prisma);
  runApp(SpieleabendApp(prisma: prisma));
}
