import 'package:flutter/material.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'exception.freezed.dart';

@freezed
class ButtonOptions with _$ButtonOptions {
  const factory ButtonOptions({
    required void Function() onPressed,
    IconData? icon,
    String? label,
  }) = _ButtonOptions;
}

/// 関数内でBuildContextやWidgetRefを使う場合は、hooksを使用
class T2Exception implements Exception {
  final String Function()? message;
  final ButtonOptions Function()? button;

  const T2Exception({
    this.message,
    this.button,
  });

  String? getMessage() => message?.call();

  ButtonOptions? getButton() => button?.call();
}
