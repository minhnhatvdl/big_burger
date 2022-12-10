import 'package:big_burger/domain/entities/burger/burger.entity.dart';
import 'package:big_burger/domain/entities/order/order.entity.dart';
import 'package:big_burger/domain/utils/number_util.dart';
import 'package:big_burger/presentation/pages/menu/ui/components/list_burgers/burger_modal_bottom_sheet.component.dart';
import 'package:big_burger/presentation/widgets/box_shadow_container.widget.dart';
import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';

class BurgerItem extends StatelessWidget {
  const BurgerItem(this.order, {Key? key}) : super(key: key);
  final OrderEntity order;

  @override
  Widget build(BuildContext context) {
    final ThemeData theme = Theme.of(context);
    final BurgerEntity burger = order.burger;
    final int quantity = order.quantity;

    return Padding(
      padding: const EdgeInsets.only(bottom: 20),
      child: InkWell(
        borderRadius: BorderRadius.circular(20),
        onTap: () {
          final BuildContext ctx = context;
          showModalBottomSheet<void>(
            context: context,
            isScrollControlled: true,
            backgroundColor: Colors.transparent,
            shape: const RoundedRectangleBorder(
              borderRadius: BorderRadius.vertical(top: Radius.circular(20)),
            ),
            builder: (_) => BurgerModalBottomSheet(ctx: ctx, order: order),
          );
        },
        child: BoxShadowContainer(
          selected: quantity > 0,
          child: Row(
            children: [
              Expanded(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: <Widget>[
                    RichText(
                      maxLines: 2,
                      overflow: TextOverflow.ellipsis,
                      text: TextSpan(
                        style: theme.textTheme.subtitle1,
                        children: <TextSpan>[
                          if (quantity > 0) TextSpan(text: '$quantity x ', style: TextStyle(color: theme.primaryColor)),
                          TextSpan(text: burger.title, style: theme.textTheme.subtitle1),
                        ],
                      ),
                    ),
                    if (burger.description.isNotEmpty)
                      Padding(
                        padding: const EdgeInsets.only(top: 5),
                        child: Text(
                          burger.description,
                          style: theme.textTheme.bodyText2,
                          maxLines: 3,
                          overflow: TextOverflow.ellipsis,
                        ),
                      ),
                    Padding(
                      padding: const EdgeInsets.only(top: 5),
                      child: Text(
                        NumberUtil.formatPrice(burger.price),
                        style: theme.textTheme.subtitle2?.copyWith(color: theme.primaryColor),
                      ),
                    ),
                  ],
                ),
              ),
              if (burger.thumbnail.isNotEmpty)
                Padding(
                  padding: const EdgeInsets.only(left: 10),
                  child: CachedNetworkImage(
                    imageUrl: burger.thumbnail,
                    placeholder: (_, __) => const SizedBox(width: 120, height: 120),
                    imageBuilder: (_, ImageProvider<Object> imageProvider) {
                      return Container(
                        width: 120,
                        height: 120,
                        decoration: BoxDecoration(
                          image: DecorationImage(
                            image: imageProvider,
                            fit: BoxFit.fitWidth,
                          ),
                        ),
                      );
                    },
                    errorWidget: (_, __, ___) => Container(
                      width: 120,
                      height: 120,
                      color: theme.dividerColor.withOpacity(.2),
                    ),
                  ),
                )
            ],
          ),
        ),
      ),
    );
  }
}
