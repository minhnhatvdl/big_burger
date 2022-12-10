import 'package:big_burger/domain/entities/order/order.entity.dart';
import 'package:big_burger/presentation/pages/menu/bloc/menu.bloc.dart';
import 'package:big_burger/presentation/pages/menu/bloc/menu_state/menu.state.dart';
import 'package:big_burger/presentation/widgets/menu/burger_item.widget.dart';
import 'package:big_burger/presentation/widgets/menu/loading_burger_item.widget.dart';
import 'package:flutter/material.dart';
import 'package:flutter_state_notifier/flutter_state_notifier.dart';
import 'package:provider/provider.dart';

class ListBurgers extends StatelessWidget {
  const ListBurgers({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);
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
          return SliverToBoxAdapter(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.stretch,
              children: [
                Padding(
                  padding: const EdgeInsets.only(bottom: 20),
                  child: Text(
                    'Malheureusement, une erreur du serveur nous a empêché de finaliser votre demande. Merci de réessayer.',
                    style: theme.textTheme.subtitle2,
                  ),
                ),
                ElevatedButton(
                  style: ElevatedButton.styleFrom(shape: const StadiumBorder(), backgroundColor: theme.primaryColor),
                  onPressed: menuBloc.getMenu,
                  child: Padding(
                    padding: const EdgeInsets.symmetric(vertical: 10),
                    child: Text(
                      'Rafraîchir',
                      style: theme.textTheme.subtitle1?.copyWith(color: Colors.white),
                    ),
                  ),
                ),
              ],
            ),
          );
        }
        return const SliverToBoxAdapter();
      },
    );
  }
}
