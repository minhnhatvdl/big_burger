import 'package:big_burger/domain/utils/number_util.dart';
import 'package:big_burger/presentation/pages/cart/bloc/cart.bloc.dart';
import 'package:big_burger/presentation/pages/cart/bloc/cart_state/cart.state.dart';
import 'package:flutter/material.dart';
import 'package:flutter_state_notifier/flutter_state_notifier.dart';
import 'package:provider/provider.dart';

class CartButton extends StatelessWidget {
  const CartButton({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);
    final cartBloc = context.read<CartBloc>();

    return StateNotifierBuilder<CartState>(
      stateNotifier: context.read<CartBloc>(),
      builder: (_, CartState state, __) {
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
          child: Column(
            mainAxisSize: MainAxisSize.min,
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: [
              Padding(
                padding: const EdgeInsets.symmetric(vertical: 10),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text('Total de commande', style: theme.textTheme.bodyText2),
                    Text(NumberUtil.formatPrice(cartBloc.totalPrice), style: theme.textTheme.subtitle1),
                  ],
                ),
              ),
              ElevatedButton(
                style: ElevatedButton.styleFrom(shape: const StadiumBorder(), backgroundColor: theme.primaryColor),
                onPressed: () {},
                child: Padding(
                  padding: const EdgeInsets.symmetric(vertical: 10),
                  child: Text(
                    'Finaliser la commande',
                    style: theme.textTheme.subtitle1?.copyWith(color: Colors.white),
                  ),
                ),
              ),
            ],
          ),
        );
      },
    );
  }
}
