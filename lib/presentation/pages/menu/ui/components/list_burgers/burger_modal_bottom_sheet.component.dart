import 'package:big_burger/domain/entities/burger/burger.entity.dart';
import 'package:big_burger/domain/entities/order/order.entity.dart';
import 'package:big_burger/domain/utils/number_util.dart';
import 'package:big_burger/gen/assets.gen.dart';
import 'package:big_burger/presentation/pages/menu/bloc/menu.bloc.dart';
import 'package:big_burger/presentation/widgets/svg_icon_button.widget.dart';
import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';

class BurgerModalBottomSheet extends StatefulWidget {
  const BurgerModalBottomSheet({required this.order, required this.ctx, Key? key}) : super(key: key);
  final OrderEntity order;
  final BuildContext ctx;

  @override
  State<BurgerModalBottomSheet> createState() => _BurgerModalBottomSheetState();
}

class _BurgerModalBottomSheetState extends State<BurgerModalBottomSheet> {
  int _quantity = 0;
  late BurgerEntity _burger;
  late MenuBloc _menuBloc;

  @override
  void initState() {
    super.initState();
    _quantity = widget.order.quantity;
    _burger = widget.order.burger;
    _menuBloc = widget.ctx.read<MenuBloc>();
  }

  @override
  Widget build(BuildContext context) {
    final ThemeData theme = Theme.of(context);
    final AppLocalizations appLocalizations = AppLocalizations.of(context)!;

    return FractionallySizedBox(
      heightFactor: 0.9,
      child: ClipRRect(
        borderRadius: const BorderRadius.vertical(top: Radius.circular(20)),
        child: Scaffold(
          body: Stack(
            children: <Widget>[
              Column(
                children: [
                  CachedNetworkImage(
                    imageUrl: _burger.thumbnail,
                    placeholder: (_, __) => Container(height: 300, color: theme.dividerColor.withOpacity(.2)),
                    imageBuilder: (_, ImageProvider<Object> imageProvider) {
                      return Container(
                        width: double.infinity,
                        height: 300,
                        decoration: BoxDecoration(
                          image: DecorationImage(
                            image: imageProvider,
                            fit: BoxFit.fitWidth,
                          ),
                        ),
                      );
                    },
                    errorWidget: (_, __, ___) => Container(height: 300, color: theme.dividerColor.withOpacity(.2)),
                  ),
                  Expanded(
                    child: Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 20),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.stretch,
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Padding(
                                padding: const EdgeInsets.symmetric(vertical: 20),
                                child: Text(_burger.title, style: theme.textTheme.headline5),
                              ),
                              if (_burger.description.isNotEmpty)
                                Padding(
                                  padding: const EdgeInsets.only(bottom: 20),
                                  child: Text(
                                    _burger.description,
                                    style: theme.textTheme.bodyText2,
                                  ),
                                ),
                              Text(
                                NumberUtil.formatPrice(_burger.price),
                                style: theme.textTheme.subtitle1?.copyWith(color: theme.primaryColor),
                              ),
                            ],
                          ),
                          SafeArea(
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.stretch,
                              children: [
                                Padding(
                                  padding: const EdgeInsets.only(bottom: 15),
                                  child: Row(
                                    mainAxisAlignment: MainAxisAlignment.center,
                                    crossAxisAlignment: CrossAxisAlignment.center,
                                    children: [
                                      SvgIconButton(
                                        svg: Assets.icons.minus,
                                        color: _quantity > 0 ? theme.primaryColor : theme.dividerColor,
                                        size: 20,
                                        onTap: () {
                                          if (_quantity > 0) {
                                            setState(() {
                                              _quantity--;
                                            });
                                          }
                                        },
                                      ),
                                      Container(
                                        width: 40,
                                        margin: const EdgeInsets.symmetric(horizontal: 20),
                                        child: Text(
                                          _quantity.toString(),
                                          style: theme.textTheme.headline6,
                                          textAlign: TextAlign.center,
                                        ),
                                      ),
                                      SvgIconButton(
                                        svg: Assets.icons.plus,
                                        color: theme.primaryColor,
                                        size: 20,
                                        onTap: () {
                                          setState(() {
                                            _quantity++;
                                          });
                                        },
                                      ),
                                    ],
                                  ),
                                ),
                                ElevatedButton(
                                  style: ElevatedButton.styleFrom(shape: const StadiumBorder(), backgroundColor: theme.primaryColor),
                                  onPressed: _quantity != widget.order.quantity || _quantity > 0
                                      ? () {
                                          _menuBloc.updateOrders(widget.order.copyWith(quantity: _quantity));
                                          Navigator.of(context).pop();
                                        }
                                      : null,
                                  child: Padding(
                                    padding: const EdgeInsets.symmetric(vertical: 10),
                                    child: Text(
                                      '${appLocalizations.totalButton} ${NumberUtil.formatPrice(_quantity * _burger.price)}',
                                      style: theme.textTheme.subtitle1?.copyWith(color: Colors.white),
                                    ),
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                ],
              ),
              Positioned(
                left: 20,
                top: 20,
                child: SvgIconButton(
                  svg: Assets.icons.cross,
                  onTap: () => Navigator.of(context).pop(),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
