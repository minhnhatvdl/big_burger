import 'package:big_burger/domain/entities/order/order.entity.dart';
import 'package:big_burger/presentation/pages/cart/bloc/cart.bloc.dart';
import 'package:big_burger/presentation/pages/cart/bloc/cart_state/cart.state.dart';
import 'package:big_burger/presentation/widgets/cart/order_item.widget.dart';
import 'package:flutter/material.dart';
import 'package:flutter_state_notifier/flutter_state_notifier.dart';
import 'package:provider/provider.dart';

class ListOrders extends StatelessWidget {
  const ListOrders({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return StateNotifierBuilder<CartState>(
      stateNotifier: context.read<CartBloc>(),
      builder: (_, CartState state, __) {
        if (state is LoadedCartState) {
          final List<OrderEntity> cart = state.cart;
          return SliverList(
            delegate: SliverChildBuilderDelegate(
              (_, int index) => OrderItem(cart[index]),
              childCount: cart.length,
            ),
          );
        }
        return const SliverToBoxAdapter();
      },
    );
  }
}
