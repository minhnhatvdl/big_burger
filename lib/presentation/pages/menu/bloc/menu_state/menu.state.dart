import 'package:big_burger/domain/entities/order/order.entity.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
part 'menu.state.freezed.dart';

@freezed
class MenuState {
  const factory MenuState.init() = InitMenuState;
  const factory MenuState.error() = ErrorMenuState;
  const factory MenuState.loading() = LoadingMenuState;
  const factory MenuState.loaded(List<OrderEntity> menu) = LoadedMenuState;
}
