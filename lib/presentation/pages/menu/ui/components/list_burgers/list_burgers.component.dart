import 'package:big_burger/domain/entities/order/order.entity.dart';
import 'package:big_burger/presentation/pages/menu/bloc/menu.bloc.dart';
import 'package:big_burger/presentation/pages/menu/bloc/menu_state/menu.state.dart';
import 'package:big_burger/presentation/widgets/menu/burger_item.widget.dart';
import 'package:big_burger/presentation/widgets/menu/error_menu.widget.dart';
import 'package:big_burger/presentation/widgets/menu/loading_burger_item.widget.dart';
import 'package:flutter/material.dart';
import 'package:flutter_state_notifier/flutter_state_notifier.dart';
import 'package:provider/provider.dart';

class ListBurgers extends StatelessWidget {
  const ListBurgers({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    final menuBloc = context.read<MenuBloc>();

    return StateNotifierBuilder<MenuState>(
      stateNotifier: menuBloc,
      builder: (_, MenuState state, __) {
        if (state is LoadingMenuState) {
          return SliverList(
            delegate: SliverChildBuilderDelegate(
              (_, int index) => const LoadingBurgerItem(),
              childCount: 4,
            ),
          );
        } else if (state is LoadedMenuState) {
          final List<OrderEntity> menu = state.menu;
          return SliverList(
            delegate: SliverChildBuilderDelegate(
              (_, int index) => BurgerItem(menu[index]),
              childCount: menu.length,
            ),
          );
        } else if (state is ErrorMenuState) {
          return SliverToBoxAdapter(child: ErrorMenu(onRefresh: menuBloc.getMenu));
        }
        return const SliverToBoxAdapter();
      },
    );
  }
}
