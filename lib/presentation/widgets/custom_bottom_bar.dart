import 'package:flutter/material.dart';
import 'package:furniture_shop/core/utils/color.dart';
import 'package:furniture_shop/data/models/bottom_menu_model.dart';
import 'package:furniture_shop/presentation/widgets/custom_image_view.dart';

// ignore: must_be_immutable
class CustomBottomBar extends StatefulWidget {
  CustomBottomBar({super.key, this.onChanged});

  Function(BottomBarEnum)? onChanged;

  @override
  State<CustomBottomBar> createState() => _CustomBottomBarState();
}

class _CustomBottomBarState extends State<CustomBottomBar> {
  int selectedIndex = 0;

  @override
  Widget build(BuildContext context) {
    return BottomNavigationBar(
      showSelectedLabels: false,
      showUnselectedLabels: false,
      items: List.generate(
        bottomMenuList.length,
        (index) {
          return BottomNavigationBarItem(
            backgroundColor: Colors.white,
            icon: CustomImageView(
              svgPath: bottomMenuList[index].icon,
              height: 22,
              color: ColorConstant.grey400,
            ),
            activeIcon: Container(
              padding: const EdgeInsets.symmetric(horizontal: 10),
              decoration: BoxDecoration(color: ColorConstant.grey500).copyWith(
                borderRadius: BorderRadius.circular(14),
              ),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.center,
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  CustomImageView(
                    svgPath: bottomMenuList[index].icon,
                    height: 20,
                    width: 22,
                    color: ColorConstant.whiteA700,
                    margin: const EdgeInsets.symmetric(vertical: 10),
                  )
                ],
              ),
            ),
            label: '',
          );
        },
      ),
      currentIndex: selectedIndex,
      onTap: (index) {
        setState(() {
          selectedIndex = index;
        });
        widget.onChanged?.call(bottomMenuList[index].type);
      },
    );
  }
}

class DefaultWidget extends StatelessWidget {
  const DefaultWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.white,
      padding: const EdgeInsets.all(10),
      child: const Center(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              'Please replace the respective Widget here',
              style: TextStyle(
                fontSize: 18,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
