import 'dart:async';

import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:t2mobile/utilities/exceptions/exception.dart';
import 'package:t2mobile/views/components/failure.dart';
import 'package:t2mobile/views/components/indicators/indicator.dart';

abstract class ExecDefaults {
  static Widget? Function(T value)? dialogOnSuccess<T>({
    String? Function(T value)? message,
  }) {
    if (message == null) return null;
    return null;
  }

  static Widget? Function(T value)? snackBarOnSuccess<T>({
    String? Function(T value)? message,
    bool? showCloseIcon,
    SnackBarAction? action,
  }) {
    if (message == null) return null;
    return (value) {
      final m = message(value);
      if (m == null) return null;
      return SnackBar(
        content: Text(m),
        showCloseIcon: showCloseIcon,
        action: action,
      );
    };
  }

  static Widget? _onFailure(Object error, StackTrace stackTrace) =>
      dialogOnFailure()(error, stackTrace);

  static Widget? Function(Object error, StackTrace stackTrace) dialogOnFailure({
    bool ignoreUnknownError = false,
  }) =>
      (error, stackTrace) {
        if (ignoreUnknownError && error is! T2Exception) return null;
        return Dialog(
          child: Padding(
            padding: const EdgeInsets.all(24),
            child: FailureView(error: error),
          ),
        );
      };
}

Future<T?> exec<T>(
  BuildContext context,
  FutureOr<T> Function() func, {
  bool showLoading = true,
  String? loadingMessage,
  Widget? Function(T value)? onSuccess,
  Widget? Function(Object error, StackTrace stackTrace)? onFailure =
      ExecDefaults._onFailure,
  bool rethrowError = false,
}) async {
  Future<void> show(Widget child) async {
    if (child is SnackBar) {
      final controller = ScaffoldMessenger.of(context).showSnackBar(child);
      await controller.closed;
    } else {
      await showDialog(
        context: context,
        builder: (context) => child,
      );
    }
  }

  try {
    final response = func();
    final T value;
    if (response is Future<T>) {
      if (showLoading) {
        value = await showDialog(
          context: context,
          barrierDismissible: false,
          builder: (_) {
            WidgetsBinding.instance.addPostFrameCallback((_) async {
              final value = await response;
              if (context.mounted) GoRouter.of(context).pop(value);
            });
            return Center(
              child: Card(
                elevation: 6,
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(28),
                ),
                child: Padding(
                  padding: const EdgeInsets.all(24),
                  child: Column(
                    mainAxisSize: MainAxisSize.min,
                    children: [
                      const T2Indicator(),
                      if (loadingMessage != null) ...[
                        const SizedBox(height: 16),
                        Text(loadingMessage),
                      ],
                    ],
                  ),
                ),
              ),
            );
          },
        );
      } else {
        value = await response;
      }
    } else {
      value = response;
    }
    final child = onSuccess?.call(value);
    if (child != null) await show(child);
    return value;
  } catch (error, stackTrace) {
    if (kDebugMode) {
      print(error);
      print(stackTrace);
    }
    if (showLoading && context.mounted) Navigator.of(context).pop();
    final child = onFailure?.call(error, stackTrace);
    if (child != null) await show(child);
    if (rethrowError) rethrow;
    return null;
  }
}
