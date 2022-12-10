import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class SvgIconButton extends StatelessWidget {
  const SvgIconButton({
    required this.svg,
    this.onTap,
    this.backgroundColor = Colors.white,
    this.color = Colors.black,
    this.size = 18,
    this.padding = const EdgeInsets.all(8),
    this.alignment = Alignment.center,
    Key? key,
  }) : super(key: key);
  final String svg;
  final VoidCallback? onTap;
  final Color backgroundColor;
  final Color? color;
  final double size;
  final EdgeInsets padding;
  final AlignmentGeometry alignment;

  @override
  Widget build(BuildContext context) {
    return Align(
      alignment: alignment,
      child: Material(
        borderRadius: BorderRadius.circular(30),
        color: backgroundColor,
        type: MaterialType.button,
        child: InkWell(
          onTap: onTap,
          borderRadius: BorderRadius.circular(30),
          child: Padding(
            padding: padding,
            child: SvgPicture.asset(
              svg,
              color: color,
              width: size,
            ),
          ),
        ),
      ),
    );
  }
}
