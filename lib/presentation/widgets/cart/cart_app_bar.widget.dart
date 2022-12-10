import 'package:big_burger/gen/assets.gen.dart';
import 'package:big_burger/presentation/widgets/svg_icon_button.widget.dart';
import 'package:flutter/material.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';

class CartAppBar extends StatelessWidget {
  const CartAppBar({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final ThemeData theme = Theme.of(context);
    final AppLocalizations appLocalizations = AppLocalizations.of(context)!;

    return SliverAppBar(
      leading: SvgIconButton(
        onTap: () => Navigator.of(context).pop(true),
        padding: const EdgeInsets.all(15),
        svg: Assets.icons.arrowLeft,
      ),
      title: Text(appLocalizations.cartTitle, style: theme.textTheme.headline6?.copyWith(color: theme.primaryColor)),
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
