import 'package:big_burger/presentation/widgets/box_shadow_container.widget.dart';
import 'package:big_burger/presentation/widgets/shimmer/shimmer_layout.widget.dart';
import 'package:flutter/material.dart';

class LoadingBurgerItem extends StatelessWidget {
  const LoadingBurgerItem({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const ShimmerLayout(
      child: Padding(
        padding: EdgeInsets.only(bottom: 20),
        child: ClipRect(
          child: BoxShadowContainer(
            child: SizedBox(height: 120),
          ),
        ),
      ),
    );
  }
}
