import 'package:eticaret/assets.dart';
import 'package:eticaret/model/bottom_nav_bar_model.dart';
import 'package:eticaret/view/account.dart';
import 'package:eticaret/view/cart.dart';
import 'package:eticaret/view/category.dart';
import 'package:eticaret/view/home.dart';
import 'package:eticaret/view/wishlist.dart';
import 'package:flutter/material.dart';

class BaseScaffoldRiverpod extends ChangeNotifier {
  List<BottomNavBarModel> items = [
    BottomNavBarModel(image: Assets.icons.icBottomHomeSVG, title: 'Home'),
    BottomNavBarModel(
        image: Assets.icons.icBottomWishlistSVG, title: 'Wishlist'),
    BottomNavBarModel(
        image: Assets.icons.icBottomCategorySVG, title: 'Category'),
    BottomNavBarModel(image: Assets.icons.icBottomAccountSVG, title: 'Account'),
    BottomNavBarModel(image: Assets.icons.icBottomCartSVG, title: 'Cart'),
  ];

  int currentIndex = 0;

  void setCurrentIndex(int index) {
    currentIndex = index;
    notifyListeners();
  }

  Widget body() {
    switch (currentIndex) {
      case 0:
        return Home();
      case 1:
        return Wishlist();
      case 2:
        return Catalog();
      case 3:
        return Account();
      case 4:
        return Cart();
      default:
        return Home();
    }
  }
}
