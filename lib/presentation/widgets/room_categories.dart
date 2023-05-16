import 'package:flutter/material.dart';
import 'package:furniture_shop/core/utils/color.dart';
import 'package:furniture_shop/data/models/room_categories_model.dart';

class RoomCategories extends StatefulWidget {
  const RoomCategories({super.key});

  @override
  State<RoomCategories> createState() => _RoomCategoriesState();
}

class _RoomCategoriesState extends State<RoomCategories> {
  int _selectedCategoryIndex = 0;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 40,
      child: ListView.separated(
        physics: const BouncingScrollPhysics(),
        scrollDirection: Axis.horizontal,
        itemBuilder: (context, index) {
          final category = roomCategories[index];
          final isSelected = _selectedCategoryIndex == index;
          return GestureDetector(
            onTap: () {
              setState(() {
                _selectedCategoryIndex = index;
              });
            },
            child: Chip(
              padding: const EdgeInsets.symmetric(horizontal: 18, vertical: 10),
              label: Text(
                category.name,
                style: TextStyle(
                  color: isSelected ? Colors.white : Colors.black,
                ),
              ),
              backgroundColor:
                  isSelected ? ColorConstant.grey500 : Colors.transparent,
            ),
          );
        },
        separatorBuilder: (context, index) =>
            const Padding(padding: EdgeInsets.only(right: 5)),
        itemCount: roomCategories.length,
      ),
    );
  }
}
