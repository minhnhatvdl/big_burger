import 'package:big_burger/domain/utils/number_util.dart';
import 'package:big_burger/presentation/pages/cart/ui/cart.page.dart';
import 'package:big_burger/presentation/pages/menu/bloc/menu.bloc.dart';
import 'package:big_burger/presentation/pages/menu/bloc/menu_state/menu.state.dart';
import 'package:flutter/material.dart';
import 'package:flutter_state_notifier/flutter_state_notifier.dart';
import 'package:provider/provider.dart';

class OrderButton extends StatelessWidget {
  const OrderButton({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);
    final menuBloc = context.read<MenuBloc>();

    return StateNotifierBuilder<MenuState>(
      stateNotifier: context.read<MenuBloc>(),
      builder: (_, MenuState state, __) {
        if (state is LoadedMenuState) {
          if (menuBloc.hasCart) {
            return Container(
              width: double.infinity,
              padding: const EdgeInsets.fromLTRB(20, 5, 20, 30),
              decoration: BoxDecoration(
                color: Colors.white,
                border: Border(
                  top: BorderSide(
                    color: theme.dividerColor.withOpacity(0.15),
                    width: 1,
                  ),
                ),
              ),
              child: ElevatedButton(
                style: ElevatedButton.styleFrom(shape: const StadiumBorder(), backgroundColor: theme.primaryColor),
                onPressed: () async {
                  final shouldRefresh = await Navigator.push(
                    context,
                    MaterialPageRoute<bool>(builder: (context) => const CartPage()),
                  );
                  if (shouldRefresh ?? false) {
                    menuBloc.refreshOrders();
                  }
                },
                child: Padding(
                  padding: const EdgeInsets.symmetric(vertical: 10),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Expanded(
                        child: Row(
                          children: [
                            Container(
                              color: theme.dividerColor.withOpacity(.4),
                              padding: const EdgeInsets.symmetric(horizontal: 8, vertical: 3),
                              margin: const EdgeInsets.only(right: 5),
                              child: Text(
                                menuBloc.quantityCart.toString(),
                                style: theme.textTheme.subtitle1?.copyWith(color: Colors.white),
                              ),
                            ),
                            Expanded(
                              child: FittedBox(
                                fit: BoxFit.scaleDown,
                                alignment: Alignment.topLeft,
                                child: Text(
                                  'Voir la commande',
                                  style: theme.textTheme.subtitle1?.copyWith(color: Colors.white),
                                ),
                              ),
                            ),
                          ],
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.only(left: 10),
                        child: Text(
                          NumberUtil.formatPrice(menuBloc.totalPrice),
                          style: theme.textTheme.subtitle1?.copyWith(color: Colors.white),
                          textAlign: TextAlign.right,
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            );
          }
        }
        return const SizedBox.shrink();
      },
    );
  }
}
