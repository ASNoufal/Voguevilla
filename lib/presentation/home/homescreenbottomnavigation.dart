import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:voguevilla/infrastucture/Api/api.dart';
import 'package:voguevilla/presentation/Account/accountPage.dart';
import 'package:voguevilla/presentation/Category/categoryPage.dart';
import 'package:voguevilla/presentation/Offers/offersPage.dart';
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

class CartPage extends StatelessWidget {
  const CartPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey[500],
      appBar: AppBar(
        title: const Text(
          "Shopping Bag",
          style: TextStyle(color: Colors.black, fontWeight: FontWeight.bold),
        ),
        actions: [
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: GestureDetector(
              child: const Text(
                "Wishlist",
                style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
              ),
              onTap: () {
                /// add the wishlist page here navigator .push()
              },
            ),
          )
        ],
      ),
      body: Padding(
        padding: const EdgeInsets.all(8.0),
        child: ListView(
          children: [
            Material(
              elevation: 5,
              child: Container(
                height: 60,
                decoration: BoxDecoration(color: Colors.red[100]),
                child: const Padding(
                  padding: EdgeInsets.all(8.0),
                  child: Text(
                    "Congrats! You've unlocked an extra 10% off on your 1st order!",
                    style: TextStyle(
                        color: Colors.black, fontWeight: FontWeight.w400),
                  ),
                ),
              ),
            ),
            sizedboxheight,
            Material(
              elevation: 5,
              child: Container(
                color: Colors.white,
                child: const Column(
                  children: [
                    ListTile(
                      trailing: Icon(Icons.delete_forever_outlined),
                      leading: Text("0"),
                      title: Text(
                        "Minimalist 10 % Vitamin Bs,OIl free MOisturizer with z",
                        style: TextStyle(color: Colors.black),
                        maxLines: 2,
                        overflow: TextOverflow.ellipsis,
                      ),
                      subtitle: Text("Category"),
                    ),
                    Padding(
                      padding: EdgeInsets.all(8.0),
                      child: Divider(
                        thickness: 1,
                      ),
                    ),
                    Padding(
                      padding: EdgeInsets.all(8.0),
                      child: Row(
                        children: [
                          Text(
                            "Quantity :1",
                            style: TextStyle(color: Colors.black),
                          ),
                          Spacer(),
                          Text(
                            "₹ 332",
                            style: TextStyle(color: Colors.black),
                          )
                        ],
                      ),
                    ),
                  ],
                ),
              ),
            ),
            const SizedBox(
              height: 10,
            ),
            Material(
              elevation: 5,
              child: Container(
                color: Colors.white,
                child: const ListTile(
                  leading: Icon(
                    Icons.discount_outlined,
                  ),
                  title: Text("Coupons & Offers"),
                  subtitle: Text("Collect now and save extra!"),
                  trailing: Icon(Icons.arrow_forward_ios),
                ),
              ),
            ),
            SizedBox(
              height: 10,
            ),
            Material(
              elevation: 5,
              child: Container(
                color: Colors.white,
                child: Padding(
                  padding: const EdgeInsets.all(10.0),
                  child: Column(
                    children: [
                      Text("Price Details"),
                      Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Row(
                          children: [
                            Text("Bag MRP"),
                            Spacer(),
                            Text("₹ 332"),
                          ],
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Row(
                          children: [
                            Text("Discount on MRP"),
                            Spacer(),
                            Text("₹ -17"),
                          ],
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Row(
                          children: [
                            Text("Additional Discount"),
                            Spacer(),
                            Text("-₹ 16.6 "),
                          ],
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Row(
                          children: [
                            Text("You Pay"),
                            Spacer(),
                            Text("₹ totalamount  "),
                          ],
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
