import 'package:flutter/material.dart';
import 'package:furniture_shop/core/constants/image_constants.dart';
import 'package:furniture_shop/core/theme/app_style.dart';
import 'package:furniture_shop/core/utils/color.dart';
import 'package:furniture_shop/presentation/widgets/custom_icon_button.dart';
import 'package:furniture_shop/presentation/widgets/custom_image_view.dart';

class ItemsCardWidget extends StatelessWidget {
  final String name;
  final String image;
  final double price;
  final double rate;

  const ItemsCardWidget(
      {super.key,
      required this.name,
      required this.image,
      required this.price,
      required this.rate});

  @override
  Widget build(BuildContext context) {
    return Align(
      alignment: Alignment.center,
      child: Container(
        decoration: BoxDecoration(
            color: ColorConstant.whiteA700,
            borderRadius: BorderRadius.circular(20)),
        child: Column(
          mainAxisSize: MainAxisSize.min,
          crossAxisAlignment: CrossAxisAlignment.start,
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            Card(
              clipBehavior: Clip.antiAlias,
              elevation: 0,
              margin: const EdgeInsets.all(0),
              color: ColorConstant.blueGrey100,
              shape: const RoundedRectangleBorder(
                borderRadius: BorderRadius.only(
                  topLeft: Radius.circular(20),
                ),
              ),
              child: Container(
                height: 163,
                width: 185,
                decoration: BoxDecoration(
                  color: ColorConstant.blueGrey100,
                  borderRadius:
                      const BorderRadius.only(topLeft: Radius.circular(20)),
                ),
                child: Stack(
                  alignment: Alignment.topLeft,
                  children: [
                    CustomImageView(
                      alignment: Alignment.center,
                      imagePath: image,
                      height: 163,
                      width: 185,
                      radius: const BorderRadius.only(
                        topLeft: Radius.circular(
                          20,
                        ),
                        topRight: Radius.circular(
                          20,
                        ),
                      ),
                    ),
                    CustomIconButton(
                      height: 34,
                      width: 34,
                      margin: const EdgeInsets.only(
                        left: 14,
                        top: 10,
                      ),
                      alignment: Alignment.topLeft,
                      child: CustomImageView(
                        svgPath: ImageConstant.imgFavorite,
                      ),
                    ),
                  ],
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(
                left: 14,
                top: 12,
              ),
              child: Text(name,
                  overflow: TextOverflow.ellipsis,
                  textAlign: TextAlign.left,
                  style:
                      AppStyle.txtPoppinsMedium14.copyWith(letterSpacing: 1.0)),
            ),
            Align(
              alignment: Alignment.center,
              child: Padding(
                padding: const EdgeInsets.only(
                  top: 4,
                  bottom: 14,
                ),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text(
                      '\$${price.toStringAsFixed(0)}',
                      overflow: TextOverflow.ellipsis,
                      textAlign: TextAlign.left,
                      style: AppStyle.txtPoppinsRegular20
                          .copyWith(letterSpacing: 1.0),
                    ),
                    CustomImageView(
                      svgPath: ImageConstant.imgStar,
                      height: 15,
                      width: 15,
                      margin: const EdgeInsets.only(
                        left: 68,
                        top: 7,
                        bottom: 6,
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(
                        left: 8,
                        top: 6,
                        bottom: 5,
                      ),
                      child: Text(
                        '$rate',
                        overflow: TextOverflow.ellipsis,
                        textAlign: TextAlign.left,
                        style: AppStyle.txtPoppinsRegular12.copyWith(
                          letterSpacing: 1.0,
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
