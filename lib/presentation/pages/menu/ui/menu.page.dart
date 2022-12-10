import 'package:big_burger/domain/usecases/orders.usecase.dart';
import 'package:big_burger/locator.dart';
import 'package:big_burger/presentation/pages/menu/bloc/menu.bloc.dart';
import 'package:big_burger/presentation/pages/menu/bloc/menu_state/menu.state.dart';
import 'package:big_burger/presentation/widgets/menu/menu_app_bar.widget.dart';
import 'package:flutter/material.dart';
import 'package:flutter_state_notifier/flutter_state_notifier.dart';
import 'components/list_burgers/list_burgers.component.dart';
import 'components/order_button.component.dart';

class MenuPage extends StatefulWidget {
  const MenuPage({Key? key}) : super(key: key);

  @override
  State<MenuPage> createState() => _MenuPageState();
}

class _MenuPageState extends State<MenuPage> with AutomaticKeepAliveClientMixin {
  @override
  bool get wantKeepAlive => true;

  late MenuBloc _menuBloc;
  final ScrollController _scrollController = ScrollController();
  @override
  void initState() {
    super.initState();
    _menuBloc = MenuBloc(ordersUsecase: locator<OrdersUsecase>())..getMenu();
  }

  @override
  Widget build(BuildContext context) {
    super.build(context);

    return StateNotifierProvider<MenuBloc, MenuState>.value(
      value: _menuBloc,
      child: Scaffold(
        body: CustomScrollView(
          controller: _scrollController,
          physics: const BouncingScrollPhysics(),
          keyboardDismissBehavior: ScrollViewKeyboardDismissBehavior.onDrag,
          slivers: const [
            MenuAppBar(),
            SliverPadding(
              padding: EdgeInsets.fromLTRB(20, 20, 20, 80),
              sliver: ListBurgers(),
            ),
          ],
        ),
        bottomSheet: const OrderButton(),
      ),
    );
  }
}
