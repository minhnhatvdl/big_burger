import 'package:big_burger/domain/entities/order/order.entity.dart';
import 'package:big_burger/domain/usecases/orders.usecase.dart';
import 'package:big_burger/presentation/pages/cart/bloc/cart_state/cart.state.dart';
import 'package:state_notifier/state_notifier.dart';

class CartBloc extends StateNotifier<CartState> {
  CartBloc({required this.ordersUsecase}) : super(const InitCartState());
  final OrdersUsecase ordersUsecase;

  List<OrderEntity> get cart => ordersUsecase.cart;

  bool get hasCart => ordersUsecase.hasCart;

  int get quantityCart => ordersUsecase.quantityCart;

  int get totalPrice => ordersUsecase.totalPrice;

  void getCart() {
    state = LoadedCartState(cart);
  }

  void updateOrders(OrderEntity order) {
    ordersUsecase.updateOrders(order);
    state = LoadedCartState(cart);
  }
}
