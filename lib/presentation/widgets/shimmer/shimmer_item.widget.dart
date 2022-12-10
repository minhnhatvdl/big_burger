import 'package:flutter/material.dart';

class ShimmerItem extends StatelessWidget {
  const ShimmerItem({this.height = 16, this.width, Key? key}) : super(key: key);
  final double height;
  final double? width;

  @override
  Widget build(BuildContext context) {
    return Container(
      height: height,
      width: width,
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(30),
      ),
    );
  }
}
