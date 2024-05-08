import 'dart:developer';

import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:material_symbols_icons/material_symbols_icons.dart';
import 'package:t2mobile/utilities/exceptions/exception.dart';
import 'package:t2mobile/views/hooks/app_localizations.dart';

class FailureView extends HookWidget {
  final Object error;
  final StackTrace? stackTrace;
  final bool showButton;

  const FailureView({
    super.key,
    required this.error,
    this.stackTrace,
    this.showButton = true,
  });

  @override
  Widget build(BuildContext context) {
    log(
      'Called FailureView',
      error: error,
      stackTrace: stackTrace,
    );

    final e = error;
    String? message;
    if (e is T2Exception) {
      message = e.getMessage();
    }
    message ??= useAppLocalizations().anUnexpectedErrorOccurred;

    return Column(
      mainAxisSize: MainAxisSize.min,
      children: [
        Icon(
          Symbols.error,
          size: 48,
          opticalSize: 24,
          color: Theme.of(context).colorScheme.error,
        ),
        const SizedBox(height: 16),
        Text(
          message,
          style: Theme.of(context).textTheme.bodyLarge,
        ),
      ],
    );
  }
}
