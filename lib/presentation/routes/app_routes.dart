import 'package:flutter/material.dart';
import 'package:furniture_shop/presentation/cart_screen/cart_screen.dart';
import 'package:furniture_shop/presentation/detail_screen/detail_screen.dart';
import 'package:furniture_shop/presentation/favorite_screen/favorite_screen.dart';
import 'package:furniture_shop/presentation/home_screen/home_screen.dart';
import 'package:furniture_shop/presentation/profile_screen/profile_screen.dart';

class AppRoutes {
  static const String homeScreen = '/home_screen';
  static const String cartScreen = '/cart_screen';
  static const String favoriteScreen = '/favorite_screen';
  static const String profileScreen = '/profile_screen';
  static const String detailScreen = '/detail_screen';

  static Map<String, WidgetBuilder> routes = {
    homeScreen: (context) => const HomeScreen(),
    cartScreen: (context) => const CartScreen(),
    favoriteScreen: (context) => const FavoriteScreen(),
    profileScreen: (context) => const ProfileScreen(),
    detailScreen: (context) => const DetailScreen(),
  };
}
