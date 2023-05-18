import 'package:flutter/material.dart';
import 'package:furniture_shop/data/models/items_furniture_model.dart';
import 'package:furniture_shop/presentation/home_screen/widgets/items_card.dart';
import 'package:furniture_shop/presentation/routes/app_routes.dart';

class ListItems extends StatefulWidget {
  const ListItems({
    super.key,
  });

  @override
  State<ListItems> createState() => _ListItemsState();
}

class _ListItemsState extends State<ListItems> {
  @override
  Widget build(BuildContext context) {
    return GridView.builder(
      gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
          mainAxisExtent: 244,
          crossAxisCount: 2,
          mainAxisSpacing: 16,
          crossAxisSpacing: 16),
      physics: const BouncingScrollPhysics(),
      itemBuilder: (context, index) {
        final item = itemsFurniture[index];
        return GestureDetector(
            onTap: () {
              Navigator.pushNamed(context, AppRoutes.detailScreen);
            },
            child: ItemsCardWidget(
                name: item.name,
                image: item.image,
                price: item.price,
                rate: item.rate));
      },
      itemCount: itemsFurniture.length,
    );
  }
}
