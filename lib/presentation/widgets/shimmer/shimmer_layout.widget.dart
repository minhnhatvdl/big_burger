import 'package:shimmer/shimmer.dart';
import 'package:flutter/material.dart';

class ShimmerLayout extends StatelessWidget {
  const ShimmerLayout({
    required this.child,
    Key? key,
  }) : super(key: key);
  final Widget child;

  @override
  Widget build(BuildContext context) {
    final Color color = Theme.of(context).dividerColor;

    return Shimmer.fromColors(
      highlightColor: color.withOpacity(0.05),
      baseColor: color.withOpacity(0.15),
      period: const Duration(milliseconds: 5000),
      child: child,
    );
  }
}
