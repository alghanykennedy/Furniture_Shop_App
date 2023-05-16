import 'package:furniture_shop/core/constants/image_constants.dart';

enum BottomBarEnum {
  home,
  cart,
  favorite,
  profile,
}

class BottomMenuModel {
  BottomMenuModel({required this.icon, required this.type});

  String icon;

  BottomBarEnum type;
}

List<BottomMenuModel> bottomMenuList = [
  BottomMenuModel(
    icon: ImageConstant.imgHome,
    type: BottomBarEnum.home,
  ),
  BottomMenuModel(
    icon: ImageConstant.imgCart,
    type: BottomBarEnum.cart,
  ),
  BottomMenuModel(
    icon: ImageConstant.imgStarGray400,
    type: BottomBarEnum.favorite,
  ),
  BottomMenuModel(
    icon: ImageConstant.imgUser,
    type: BottomBarEnum.profile,
  )
];
