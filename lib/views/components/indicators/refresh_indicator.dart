import 'package:custom_refresh_indicator/custom_refresh_indicator.dart';
import 'package:flutter/material.dart';
import 'package:t2mobile/views/components/indicators/indicator.dart';

class T2RefreshIndicator extends StatelessWidget {
  final Future<void> Function() onRefresh;
  final Widget child;

  const T2RefreshIndicator({
    super.key,
    required this.onRefresh,
    required this.child,
  });

  @override
  Widget build(BuildContext context) => CustomMaterialIndicator(
        onRefresh: onRefresh,
        indicatorBuilder: (context, controller) => Center(child: T2Indicator()),
        child: child,
      );
}
