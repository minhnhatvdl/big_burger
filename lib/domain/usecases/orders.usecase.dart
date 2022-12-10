import 'package:big_burger/data/repositories/burgers.repository.dart';
import 'package:big_burger/data/repositories/repository_reponse.dart';
import 'package:big_burger/domain/entities/order/order.entity.dart';

class OrdersUsecase {
  OrdersUsecase({required this.burgersRepository});
  final BurgersRepository burgersRepository;

  List<OrderEntity> menu = [];
  List<OrderEntity> cart = [];

  bool get hasCart => cart.isNotEmpty;

  int get quantityCart => cart.fold(0, (sum, order) => sum + order.quantity);

  int get totalPrice => cart.fold(0, (sum, order) => sum + order.quantity * order.burger.price);

  Future<RepositoryResponse<SimpleStatus, List<OrderEntity>>> getMenu() async {
    final response = await burgersRepository.getBurgers();
    if (response.status == SimpleStatus.success) {
      final burgers = response.content ?? [];
      menu = burgers.map((burger) => OrderEntity(quantity: 0, burger: burger)).toList();
      return RepositoryResponse<SimpleStatus, List<OrderEntity>>(
        status: SimpleStatus.success,
        content: menu,
      );
    }
    return const RepositoryResponse<SimpleStatus, List<OrderEntity>>(status: SimpleStatus.error);
  }

  void updateCart(OrderEntity order) {
    final index = cart.indexWhere((item) => item.burger.ref == order.burger.ref);
    if (index > -1) {
      if (order.quantity > 0) {
        cart[index] = order;
      } else {
        cart.removeAt(index);
      }
    } else {
      cart.add(order);
    }
  }

  void updateMenu(OrderEntity order) {
    final index = menu.indexWhere((item) => item.burger.ref == order.burger.ref);
    menu[index] = order;
  }

  void updateOrders(OrderEntity order) {
    updateCart(order);
    updateMenu(order);
  }

  void refreshOrders() {
    final refsCart = cart.map((item) => item.burger.ref).toList();
    for (var i = 0; i < menu.length; i++) {
      if (refsCart.contains(menu[i].burger.ref)) {
        final index = cart.indexWhere((item) => item.burger.ref == menu[i].burger.ref);
        menu[i] = cart[index];
      } else {
        menu[i] = menu[i].copyWith(quantity: 0);
      }
    }
  }
}
