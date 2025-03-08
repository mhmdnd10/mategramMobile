import 'package:flutter/material.dart';

class RefreshComponent extends StatelessWidget {
  const RefreshComponent({
    super.key,
    required this.onRefresh,
    required this.child,
  });
  final Widget child;
  final Future<void> Function() onRefresh;

  @override
  Widget build(BuildContext context) {
    return RefreshIndicator(child: child, onRefresh: onRefresh);
  }
}
