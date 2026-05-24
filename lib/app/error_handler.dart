import 'package:flutter/material.dart';

/// Thrown by feature blocs/screens when a user-story has not been implemented
/// yet. The global handler converts it into a user-friendly dialog.
class FeatureNotImplementedError implements Exception {
  final String featureName;
  FeatureNotImplementedError(this.featureName);
  @override
  String toString() => 'Feature "$featureName" ist noch nicht implementiert.';
}

/// Wraps a callback and routes any thrown exception to a SnackBar/dialog so
/// every clickable element fails loudly but gracefully.
Future<void> guard(
  BuildContext context,
  Future<void> Function() action, {
  String fallbackMessage = 'Ein unerwarteter Fehler ist aufgetreten.',
}) async {
  try {
    await action();
  } on FeatureNotImplementedError catch (e) {
    if (!context.mounted) return;
    showDialog<void>(
      context: context,
      builder: (ctx) => AlertDialog(
        icon: const Icon(Icons.construction_outlined),
        title: const Text('Noch nicht verfügbar'),
        content: Text(e.toString()),
        actions: [
          TextButton(
            onPressed: () => Navigator.of(ctx).pop(),
            child: const Text('OK'),
          ),
        ],
      ),
    );
  } catch (e) {
    if (!context.mounted) return;
    final messenger = ScaffoldMessenger.maybeOf(context);
    messenger?.showSnackBar(
      SnackBar(
        backgroundColor: Theme.of(context).colorScheme.errorContainer,
        content: Text('$fallbackMessage\n$e'),
      ),
    );
  }
}
