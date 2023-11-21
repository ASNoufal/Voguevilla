import 'package:flutter/material.dart';
import 'package:voguevilla/presentation/home/homescreenbottomnavigation.dart';

class BottomNavigationBarClass extends StatelessWidget {
  const BottomNavigationBarClass({super.key});

  @override
  Widget build(BuildContext context) {
    return ValueListenableBuilder(
        valueListenable: HomeScreenBottomNavigation.currentvalue,
        builder: (context, newvalue, _) {
          return BottomNavigationBar(
              currentIndex: newvalue,
              onTap: (values) {
                HomeScreenBottomNavigation.currentvalue.value = values;
              },
              backgroundColor: Colors.white,
              items: const [
                BottomNavigationBarItem(icon: Icon(Icons.home), label: "home"),
                BottomNavigationBarItem(
                    icon: Icon(
                      Icons.local_offer,
                    ),
                    label: "Offer"),
                BottomNavigationBarItem(
                    icon: Icon(Icons.category_rounded), label: "Category"),
                BottomNavigationBarItem(
                    icon: Icon(Icons.account_box), label: "Account")
              ]);
        });
  }
}
