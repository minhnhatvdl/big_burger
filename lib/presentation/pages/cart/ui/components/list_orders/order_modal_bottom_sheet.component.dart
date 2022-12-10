import 'package:big_burger/domain/entities/burger/burger.entity.dart';
import 'package:big_burger/domain/entities/order/order.entity.dart';
import 'package:big_burger/domain/utils/number_util.dart';
import 'package:big_burger/gen/assets.gen.dart';
import 'package:big_burger/presentation/pages/cart/bloc/cart.bloc.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:provider/provider.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';

class OrderModalBottomSheet extends StatefulWidget {
  const OrderModalBottomSheet({required this.order, required this.ctx, Key? key}) : super(key: key);
  final OrderEntity order;
  final BuildContext ctx;

  @override
  State<OrderModalBottomSheet> createState() => _OrderModalBottomSheetState();
}

class _OrderModalBottomSheetState extends State<OrderModalBottomSheet> {
  int _quantity = 0;
  late BurgerEntity _burger;
  late CartBloc _cartBloc;

  @override
  void initState() {
    super.initState();
    _quantity = widget.order.quantity;
    _burger = widget.order.burger;
    _cartBloc = widget.ctx.read<CartBloc>();
  }

  @override
  Widget build(BuildContext context) {
    final ThemeData theme = Theme.of(context);
    final AppLocalizations appLocalizations = AppLocalizations.of(context)!;

    return Container(
      color: Colors.white,
      padding: const EdgeInsets.symmetric(horizontal: 20),
      child: Column(
        mainAxisSize: MainAxisSize.min,
        crossAxisAlignment: CrossAxisAlignment.stretch,
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Padding(
            padding: const EdgeInsets.symmetric(vertical: 20),
            child: Text(
              _burger.title,
              style: theme.textTheme.headline6,
              textAlign: TextAlign.center,
            ),
          ),
          Text(
            'Prix : ${NumberUtil.formatPrice(_quantity * _burger.price)}',
            style: theme.textTheme.bodyText2?.copyWith(color: theme.primaryColor),
            textAlign: TextAlign.center,
          ),
          Padding(
            padding: const EdgeInsets.symmetric(vertical: 15),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                ElevatedButton(
                  onPressed: () {
                    if (_quantity > 0) {
                      setState(() {
                        _quantity--;
                      });
                    }
                  },
                  style: ElevatedButton.styleFrom(
                    backgroundColor: Colors.white,
                    shape: const CircleBorder(),
                  ),
                  child: Padding(
                    padding: const EdgeInsets.all(5),
                    child: SvgPicture.asset(
                      Assets.icons.minus,
                      width: 20,
                      color: _quantity > 0 ? theme.primaryColor : theme.dividerColor,
                    ),
                  ),
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
                ElevatedButton(
                  onPressed: () {
                    setState(() {
                      _quantity++;
                    });
                  },
                  style: ElevatedButton.styleFrom(
                    backgroundColor: Colors.white,
                    shape: const CircleBorder(),
                  ),
                  child: Padding(
                    padding: const EdgeInsets.all(5),
                    child: SvgPicture.asset(
                      Assets.icons.plus,
                      width: 20,
                      color: theme.primaryColor,
                    ),
                  ),
                ),
              ],
            ),
          ),
          SafeArea(
            child: ElevatedButton(
              style: ElevatedButton.styleFrom(shape: const StadiumBorder(), backgroundColor: theme.primaryColor),
              onPressed: _quantity != widget.order.quantity
                  ? () {
                      final newOrder = widget.order.copyWith(quantity: _quantity);
                      _cartBloc.updateOrders(newOrder);
                      Navigator.of(context).pop();
                    }
                  : null,
              child: Padding(
                padding: const EdgeInsets.symmetric(vertical: 10),
                child: Text(
                  appLocalizations.updateButton,
                  style: theme.textTheme.subtitle1?.copyWith(color: Colors.white),
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
