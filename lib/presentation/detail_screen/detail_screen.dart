import 'package:flutter/material.dart';
import 'package:furniture_shop/core/constants/image_constants.dart';
import 'package:furniture_shop/core/utils/color.dart';
import 'package:furniture_shop/presentation/home_screen/widgets/home_appbar.dart';
import 'package:furniture_shop/presentation/home_screen/widgets/icon_appbar.dart';
import 'package:furniture_shop/presentation/widgets/custom_button.dart';
import 'package:furniture_shop/presentation/widgets/custom_image_view.dart';

import '../../core/theme/app_style.dart';
import '../widgets/custom_icon_button.dart';

class DetailScreen extends StatelessWidget {
  const DetailScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: ColorConstant.grey50,
        body: SizedBox(
          width: double.maxFinite,
          child: Stack(
            alignment: Alignment.bottomCenter,
            children: [
              Align(
                alignment: Alignment.topCenter,
                child: Card(
                  clipBehavior: Clip.antiAlias,
                  elevation: 0,
                  margin: const EdgeInsets.all(0),
                  color: ColorConstant.blueGrey100,
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(20),
                  ),
                  child: Container(
                    height: 567,
                    width: double.maxFinite,
                    decoration: BoxDecoration(
                        color: ColorConstant.grey100,
                        borderRadius: BorderRadius.circular(20)),
                    child: Stack(
                      alignment: Alignment.topCenter,
                      children: [
                        CustomImageView(
                          imagePath: ImageConstant.imgVipofficefurn,
                          height: 567,
                          width: 414,
                          radius: BorderRadius.circular(20),
                          alignment: Alignment.center,
                        ),
                        HomeAppBar(
                          height: 87,
                          leadingWidth: 36,
                          leading: GestureDetector(
                            onTap: () {
                              Navigator.pop(context);
                            },
                            child: IconAppBar(
                              height: 18,
                              width: 22,
                              svgPath: ImageConstant.imgArrowleft,
                              margin: const EdgeInsets.only(
                                left: 14,
                                top: 19,
                                bottom: 18,
                              ),
                            ),
                          ),
                          centerTitle: true,
                          title: Text(
                            'Detail',
                            overflow: TextOverflow.ellipsis,
                            textAlign: TextAlign.left,
                            style: AppStyle.txtPoppinsSemiBold16
                                .copyWith(letterSpacing: 1.0),
                          ),
                          actions: [
                            CustomIconButton(
                              height: 34,
                              width: 34,
                              margin: const EdgeInsets.only(
                                left: 14,
                                top: 19,
                                right: 10,
                                bottom: 18,
                              ),
                              alignment: Alignment.center,
                              child: CustomImageView(
                                svgPath: ImageConstant.imgFavorite,
                              ),
                            ),
                            IconAppBar(
                              height: 18,
                              width: 18,
                              svgPath: ImageConstant.imgShare,
                              margin: const EdgeInsets.only(
                                left: 14,
                                top: 19,
                                right: 14,
                                bottom: 18,
                              ),
                            ),
                          ],
                        ),
                      ],
                    ),
                  ),
                ),
              ),
              Align(
                alignment: Alignment.bottomCenter,
                child: Container(
                  padding: const EdgeInsets.symmetric(
                    horizontal: 14,
                    vertical: 14,
                  ),
                  decoration: BoxDecoration(
                    color: ColorConstant.whiteA700,
                    borderRadius: BorderRadius.circular(40),
                  ),
                  child: Column(
                    mainAxisSize: MainAxisSize.min,
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      Container(
                        height: 5,
                        width: 36,
                        decoration: BoxDecoration(
                          color: ColorConstant.blueGrey100,
                          borderRadius: BorderRadius.circular(2),
                        ),
                      ),
                      Padding(
                        padding:
                            const EdgeInsets.only(left: 9, top: 9, right: 12),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Padding(
                              padding: const EdgeInsets.only(top: 4, bottom: 1),
                              child: Text(
                                'Wooden Coff',
                                overflow: TextOverflow.ellipsis,
                                textAlign: TextAlign.left,
                                style: AppStyle.txtPoppinsMedium22
                                    .copyWith(letterSpacing: 1.0),
                              ),
                            ),
                            Text(
                              '\$ 240',
                              overflow: TextOverflow.ellipsis,
                              textAlign: TextAlign.left,
                              style: AppStyle.txtPoppinsRegular26
                                  .copyWith(letterSpacing: 1.0),
                            ),
                          ],
                        ),
                      ),
                      CustomImageView(
                        svgPath: ImageConstant.imgScore,
                        height: 18,
                        width: 122,
                        alignment: Alignment.centerLeft,
                        margin: const EdgeInsets.only(left: 9, top: 8),
                      ),
                      Padding(
                        padding:
                            const EdgeInsets.only(left: 9, top: 17, right: 12),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Padding(
                              padding: const EdgeInsets.only(top: 7, bottom: 6),
                              child: Text(
                                'Choose a color :',
                                overflow: TextOverflow.ellipsis,
                                textAlign: TextAlign.left,
                                style: AppStyle.txtPoppinsLight12,
                              ),
                            ),
                            CustomImageView(
                              svgPath: ImageConstant.imgColorpalette,
                              height: 32,
                              width: 144,
                            ),
                          ],
                        ),
                      ),
                      Padding(
                        padding:
                            const EdgeInsets.only(left: 9, top: 12, right: 12),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Padding(
                              padding: const EdgeInsets.only(
                                top: 8,
                                bottom: 5,
                              ),
                              child: Text(
                                'Select Quality :',
                                overflow: TextOverflow.ellipsis,
                                textAlign: TextAlign.left,
                                style: AppStyle.txtPoppinsLight12,
                              ),
                            ),
                            Container(
                              decoration: BoxDecoration(
                                color: ColorConstant.grey20001,
                                borderRadius: BorderRadius.circular(14),
                              ),
                              child: Row(
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: [
                                  Card(
                                    clipBehavior: Clip.antiAlias,
                                    elevation: 0,
                                    margin: const EdgeInsets.all(0),
                                    color: ColorConstant.grey50001,
                                    shape: RoundedRectangleBorder(
                                      side: BorderSide(
                                        color: ColorConstant.grey20001,
                                        width: 1,
                                      ),
                                      borderRadius: BorderRadius.circular(16),
                                    ),
                                    child: Container(
                                      height: 32,
                                      width: 32,
                                      padding: const EdgeInsets.symmetric(
                                        horizontal: 11,
                                        vertical: 15,
                                      ),
                                      decoration: BoxDecoration(
                                        color: ColorConstant.grey20001,
                                        borderRadius: BorderRadius.circular(16),
                                      ),
                                      child: Stack(
                                        children: [
                                          CustomImageView(
                                            svgPath: ImageConstant.imgIcon,
                                            height: 1,
                                            width: 10,
                                            alignment: Alignment.center,
                                          )
                                        ],
                                      ),
                                    ),
                                  ),
                                  Padding(
                                    padding: const EdgeInsets.only(
                                        left: 15, top: 5, bottom: 5),
                                    child: Text(
                                      '2',
                                      overflow: TextOverflow.ellipsis,
                                      textAlign: TextAlign.left,
                                      style:
                                          AppStyle.txtPoppinsMedium14.copyWith(
                                        letterSpacing: 1.0,
                                      ),
                                    ),
                                  ),
                                  Card(
                                    clipBehavior: Clip.antiAlias,
                                    elevation: 0,
                                    margin: const EdgeInsets.only(left: 14),
                                    color: ColorConstant.grey50001,
                                    shape: RoundedRectangleBorder(
                                      side: BorderSide(
                                        color: ColorConstant.grey20001,
                                        width: 1,
                                      ),
                                      borderRadius: BorderRadius.circular(16),
                                    ),
                                    child: Container(
                                      height: 32,
                                      width: 32,
                                      padding: const EdgeInsets.all(11),
                                      decoration: BoxDecoration(
                                        color: ColorConstant.grey20001,
                                        borderRadius: BorderRadius.circular(16),
                                      ),
                                      child: Stack(
                                        children: [
                                          CustomImageView(
                                            svgPath: ImageConstant.imgPlus,
                                            height: 10,
                                            width: 10,
                                            alignment: Alignment.center,
                                          )
                                        ],
                                      ),
                                    ),
                                  ),
                                ],
                              ),
                            )
                          ],
                        ),
                      ),
                      Align(
                        alignment: Alignment.centerLeft,
                        child: Container(
                          width: 366,
                          margin: const EdgeInsets.only(
                              top: 29, right: 19, bottom: 30),
                          child: Text(
                            "Curabitur commodo turpis id placerat mattis. Mauris euismod arcu id orci fringilla sodales. Proin congue eleifend ipsum, eleifend porttitor mi ullamcorper.",
                            maxLines: null,
                            textAlign: TextAlign.left,
                            style: AppStyle.txtPoppinsRegular12Gray50001
                                .copyWith(letterSpacing: 1.0),
                          ),
                        ),
                      ),
                      CustomButton(text: 'ADD TO CART', onPressed: () {})
                    ],
                  ),
                ),
              ),
            ],
          ),
        ));
  }
}
