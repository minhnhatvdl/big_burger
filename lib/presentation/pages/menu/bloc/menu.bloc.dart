import 'package:big_burger/data/repositories/repository_reponse.dart';
import 'package:big_burger/domain/entities/order/order.entity.dart';
import 'package:big_burger/domain/usecases/orders.usecase.dart';
import 'package:state_notifier/state_notifier.dart';
import 'menu_state/menu.state.dart';

class MenuBloc extends StateNotifier<MenuState> {
  MenuBloc({required this.ordersUsecase}) : super(const InitMenuState());
  final OrdersUsecase ordersUsecase;

  List<OrderEntity> get menu => ordersUsecase.menu;

  bool get hasCart => ordersUsecase.hasCart;

  int get quantityCart => ordersUsecase.quantityCart;

  int get totalPrice => ordersUsecase.totalPrice;

  Future<void> getMenu() async {
    state = const LoadingMenuState();
    final response = await ordersUsecase.getMenu();
    if (response.status == SimpleStatus.success) {
      state = LoadedMenuState(menu);
    } else {
      state = const ErrorMenuState();
    }
  }

  void updateOrders(OrderEntity order) {
    ordersUsecase.updateOrders(order);
    state = LoadedMenuState(menu);
  }

  void refreshOrders() {
    ordersUsecase.refreshOrders();
    state = LoadedMenuState(menu);
  }
}
