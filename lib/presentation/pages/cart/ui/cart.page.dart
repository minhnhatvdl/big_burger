import 'package:big_burger/domain/usecases/orders.usecase.dart';
import 'package:big_burger/locator.dart';
import 'package:big_burger/presentation/pages/cart/bloc/cart.bloc.dart';
import 'package:big_burger/presentation/pages/cart/bloc/cart_state/cart.state.dart';
import 'package:big_burger/presentation/pages/cart/ui/components/list_orders/list_orders.component.dart';
import 'package:big_burger/presentation/widgets/cart/cart_app_bar.widget.dart';
import 'package:flutter/material.dart';
import 'package:flutter_state_notifier/flutter_state_notifier.dart';
import 'components/cart_button.component.dart';

class CartPage extends StatefulWidget {
  const CartPage({Key? key}) : super(key: key);

  @override
  State<CartPage> createState() => _CartPageState();
}

class _CartPageState extends State<CartPage> with AutomaticKeepAliveClientMixin {
  @override
  bool get wantKeepAlive => true;

  late CartBloc _cartBloc;
  final ScrollController _scrollController = ScrollController();
  @override
  void initState() {
    super.initState();
    _cartBloc = CartBloc(ordersUsecase: locator<OrdersUsecase>())..getCart();
  }

  @override
  Widget build(BuildContext context) {
    super.build(context);

    return StateNotifierProvider<CartBloc, CartState>.value(
      value: _cartBloc,
      child: WillPopScope(
        onWillPop: () async => false,
        child: Scaffold(
          body: CustomScrollView(
            controller: _scrollController,
            physics: const BouncingScrollPhysics(),
            keyboardDismissBehavior: ScrollViewKeyboardDismissBehavior.onDrag,
            slivers: const [
              CartAppBar(),
              SliverPadding(
                padding: EdgeInsets.only(bottom: 150),
                sliver: ListOrders(),
              ),
            ],
          ),
          bottomSheet: const CartButton(),
        ),
      ),
    );
  }
}
