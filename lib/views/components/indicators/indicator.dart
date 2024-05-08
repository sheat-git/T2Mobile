import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';

class T2Indicator extends HookWidget {
  final Color? color;
  final double? _value;

  const T2Indicator({
    super.key,
    this.color,
    double? value,
  }) : _value = value;

  @override
  Widget build(BuildContext context) {
    final controller = useAnimationController(
      initialValue: 0.5,
      duration: const Duration(milliseconds: 1100),
    );
    controller.repeat();
    useAnimation(controller);
    final value = _value ?? controller.value;

    return SizedBox(
      width: _itemWidth * _count + 4 * (_count - 1),
      height: _itemHeight,
      child: Row(
        children: List.generate(
          _count * 2 - 1,
          (i) {
            if (i.isOdd) return const SizedBox(width: 4);
            i ~/= 2;
            final double height;
            if (value < 0.5) {
              // vは0-3
              final v = (value * 2 * _count);
              final j = v.floor();
              if (j < i) {
                height = _itemHeight * _itemScale;
              } else if (j == i) {
                height =
                    _itemHeight * (_itemScale + (v - j) * (1 - _itemScale));
              } else {
                height = _itemHeight;
              }
            } else {
              final v = ((value - 0.5) * 2 * _count);
              final j = v.floor();
              if (j < i) {
                height = _itemHeight;
              } else if (j == i) {
                height = _itemHeight * (1 - (v - j) * (1 - _itemScale));
              } else {
                height = _itemHeight * _itemScale;
              }
            }
            return Container(
              width: _itemWidth,
              height: height,
              decoration: BoxDecoration(
                color: color ?? Theme.of(context).colorScheme.primary,
                borderRadius: BorderRadius.horizontal(
                  left: i == 0 ? const Radius.circular(8) : Radius.zero,
                  right:
                      i == _count - 1 ? const Radius.circular(8) : Radius.zero,
                ),
              ),
            );
          },
        ),
      ),
    );
  }

  /// インジケーターの数
  static const _count = 3;

  /// インジケーターの幅
  static const _itemWidth = 16.0;

  /// インジケーターの高さ
  static const _itemHeight = 48.0;

  /// インジケーターの縮小率
  static const _itemScale = 0.7;
}
