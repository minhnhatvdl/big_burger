import 'package:flutter/material.dart';

class BoxShadowContainer extends StatelessWidget {
  const BoxShadowContainer({this.child, this.selected = false, Key? key}) : super(key: key);
  final Widget? child;
  final bool selected;

  @override
  Widget build(BuildContext context) {
    final ThemeData theme = Theme.of(context);

    return Ink(
      padding: const EdgeInsets.all(15),
      decoration: BoxDecoration(
        color: Colors.white,
        gradient: selected ? LinearGradient(stops: const [0.02, 0.02], colors: [theme.primaryColor, Colors.white]) : null,
        borderRadius: BorderRadius.circular(25),
        boxShadow: <BoxShadow>[
          BoxShadow(
            color: theme.dividerColor.withOpacity(0.2),
            spreadRadius: 5,
            blurRadius: 25,
            offset: const Offset(0, 10),
          ),
        ],
      ),
      child: child,
    );
  }
}
