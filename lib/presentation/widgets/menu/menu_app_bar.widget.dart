import 'package:flutter/material.dart';

class MenuAppBar extends StatelessWidget {
  const MenuAppBar({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final ThemeData theme = Theme.of(context);

    return SliverAppBar(
      title: Text('Big Burger', style: theme.textTheme.headline6?.copyWith(color: theme.primaryColor)),
      centerTitle: true,
      pinned: true,
      floating: true,
      // snap: true,
      elevation: 0,
      bottom: PreferredSize(
        preferredSize: const Size.fromHeight(1),
        child: Container(
          color: theme.dividerColor.withOpacity(0.15),
          height: 1,
        ),
      ),
    );
  }
}
