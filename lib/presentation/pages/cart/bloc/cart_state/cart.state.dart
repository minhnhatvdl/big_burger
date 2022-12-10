import 'package:big_burger/domain/entities/order/order.entity.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
part 'cart.state.freezed.dart';

@freezed
class CartState {
  const factory CartState.init() = InitCartState;
  const factory CartState.error() = ErrorCartState;
  const factory CartState.loading() = LoadingCartState;
  const factory CartState.loaded(List<OrderEntity> cart) = LoadedCartState;
}
