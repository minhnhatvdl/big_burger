import 'package:big_burger/domain/utils/number_util.dart';
import 'package:big_burger/presentation/pages/cart/bloc/cart.bloc.dart';
import 'package:big_burger/presentation/pages/cart/bloc/cart_state/cart.state.dart';
import 'package:flutter/material.dart';
import 'package:flutter_state_notifier/flutter_state_notifier.dart';
import 'package:provider/provider.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';

class CartButton extends StatelessWidget {
  const CartButton({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);
    final AppLocalizations appLocalizations = AppLocalizations.of(context)!;
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
                    Text(appLocalizations.orderTotal, style: theme.textTheme.bodyText2),
                    Text(NumberUtil.formatPrice(cartBloc.totalPrice), style: theme.textTheme.subtitle1),
                  ],
                ),
              ),
              ElevatedButton(
                style: ElevatedButton.styleFrom(shape: const StadiumBorder(), backgroundColor: theme.primaryColor),
                onPressed: () {
                  ScaffoldMessenger.of(context).showSnackBar(
                    SnackBar(
                      backgroundColor: theme.primaryColor,
                      content: Text(
                        appLocalizations.thanksOrder,
                        style: theme.textTheme.bodyText2?.copyWith(color: Colors.white),
                      ),
                      duration: const Duration(seconds: 5),
                    ),
                  );
                },
                child: Padding(
                  padding: const EdgeInsets.symmetric(vertical: 10),
                  child: Text(
                    appLocalizations.completeOrderButton,
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
