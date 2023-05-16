import 'package:flutter/material.dart';
import 'package:furniture_shop/core/constants/image_constants.dart';
import 'package:furniture_shop/core/utils/color.dart';
import 'package:furniture_shop/presentation/home_screen/widgets/home_appbar.dart';
import 'package:furniture_shop/presentation/home_screen/widgets/icon_appbar.dart';
import 'package:furniture_shop/core/theme/app_style.dart';
import 'package:furniture_shop/presentation/widgets/custom_bottom_bar.dart';
import 'package:furniture_shop/presentation/widgets/list_items_widget.dart';
import 'package:furniture_shop/presentation/widgets/room_categories.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: ColorConstant.grey50,
      appBar: HomeAppBar(
        height: 87,
        leadingWidth: 36,
        leading: IconAppBar(
          height: 18,
          width: 22,
          svgPath: ImageConstant.imgMenu,
          margin: const EdgeInsets.only(
            left: 14,
            top: 19,
            bottom: 18,
          ),
        ),
        centerTitle: true,
        title: Text(
          'Home',
          overflow: TextOverflow.ellipsis,
          textAlign: TextAlign.left,
          style: AppStyle.txtPoppinsSemiBold16.copyWith(letterSpacing: 1.0),
        ),
        actions: [
          IconAppBar(
            height: 18,
            width: 18,
            svgPath: ImageConstant.imgSearch,
            margin: const EdgeInsets.only(
              left: 14,
              top: 19,
              right: 14,
              bottom: 18,
            ),
          ),
        ],
      ),
      body: Container(
        width: double.maxFinite,
        padding: const EdgeInsetsDirectional.symmetric(
          vertical: 12,
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Container(
              width: 300,
              margin: const EdgeInsets.only(
                left: 14,
              ),
              child: Text(
                'Discover the most modern furniture',
                maxLines: null,
                textAlign: TextAlign.left,
                style: AppStyle.txtPoppinsMedium22.copyWith(letterSpacing: 1.0),
              ),
            ),
            Container(
              margin: const EdgeInsets.only(left: 14, top: 30),
              child: const RoomCategories(),
            ),
            Container(
              margin: const EdgeInsets.only(
                top: 30,
                left: 14,
              ),
              child: Text(
                'Recommended Furnitures',
                overflow: TextOverflow.ellipsis,
                textAlign: TextAlign.left,
                style: AppStyle.txtPoppinsMedium18.copyWith(letterSpacing: 1.0),
              ),
            ),
            const Expanded(
                child: Align(
              alignment: Alignment.center,
              child: Padding(
                padding: EdgeInsets.only(
                  left: 14,
                  top: 19,
                  right: 14,
                ),
                child: ListItems(),
              ),
            ))
          ],
        ),
      ),
      bottomNavigationBar: SizedBox(height: 70, child: CustomBottomBar()),
    );
  }
}
