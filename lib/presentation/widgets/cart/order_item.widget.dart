import 'package:big_burger/domain/entities/order/order.entity.dart';
import 'package:big_burger/domain/utils/number_util.dart';
import 'package:big_burger/presentation/pages/cart/ui/components/list_orders/order_modal_bottom_sheet.component.dart';
import 'package:flutter/material.dart';

class OrderItem extends StatelessWidget {
  const OrderItem(this.order, {Key? key}) : super(key: key);
  final OrderEntity order;

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);

    return InkWell(
      onTap: () {
        final BuildContext ctx = context;
        showModalBottomSheet<void>(
          context: context,
          backgroundColor: Colors.transparent,
          shape: const RoundedRectangleBorder(
            borderRadius: BorderRadius.vertical(top: Radius.circular(20)),
          ),
          builder: (_) => OrderModalBottomSheet(ctx: ctx, order: order),
        );
      },
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 15),
        child: Row(
          children: [
            Expanded(
              child: Row(
                children: [
                  Padding(
                    padding: const EdgeInsets.only(right: 15),
                    child: Text('${order.quantity} x', style: theme.textTheme.subtitle1?.copyWith(color: theme.primaryColor)),
                  ),
                  Expanded(child: Text(order.burger.title, style: theme.textTheme.bodyText2)),
                ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(left: 15),
              child: Text(NumberUtil.formatPrice(order.quantity * order.burger.price), style: theme.textTheme.bodyText2?.copyWith(color: theme.primaryColor)),
            )
          ],
        ),
      ),
    );
  }
}
