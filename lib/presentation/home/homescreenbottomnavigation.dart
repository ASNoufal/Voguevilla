import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:voguevilla/infrastucture/Api/api.dart';
import 'package:voguevilla/presentation/Account/accountPage.dart';
import 'package:voguevilla/presentation/Category/categoryPage.dart';
import 'package:voguevilla/presentation/Offers/offersPage.dart';
import 'package:voguevilla/presentation/cart/cartpage.dart';
import 'package:voguevilla/presentation/home/homepage.dart';
import 'package:voguevilla/presentation/home/widget/bottomNavigationBar.dart';
import 'package:voguevilla/presentation/home/widget/widget.dart';

import 'const/const.dart';

ValueNotifier currentindex = ValueNotifier<int>(0);

class HomeScreenBottomNavigation extends StatelessWidget {
  const HomeScreenBottomNavigation({super.key});
  static ValueNotifier<int> currentvalue = ValueNotifier<int>(0);

  @override
  Widget build(BuildContext context) {
    List<Widget> items = [
      HomePage(),
      OffersPage(),
      CategoryPage(),
      AccountPage()
    ];

    return Scaffold(
        bottomNavigationBar: const BottomNavigationBarClass(),
        appBar: AppBar(title: appbartitle(), actions: getaction(context)),
        body: ValueListenableBuilder(
            valueListenable: currentvalue,
            builder: (context, newvalue, _) {
              return items[newvalue];
            }));
  }
}

List<Widget>? getaction(BuildContext context) {
  return [
    sizedboxwidth,
    IconButton(
      onPressed: () {
        Api().getMenCarouselApi();
      },
      icon: const Icon(
        CupertinoIcons.bell,
        size: 25,
      ),
    ),
    sizedboxwidth,
    IconButton(
      onPressed: () {},
      icon: const Icon(
        CupertinoIcons.heart,
        size: 25,
      ),
    ),
    sizedboxwidth,
    IconButton(
      onPressed: () {
        gotocartpage(context);
      },
      icon: const Icon(
        CupertinoIcons.bag,
        size: 25,
      ),
    ),
    sizedboxwidth
  ];
}

void gotocartpage(BuildContext context) {
  Navigator.push(
      context, MaterialPageRoute(builder: (builder) => const CartPage()));
}
