import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import '../const/const.dart';

Widget appbartitle() {
  return Row(
    children: [
      Container(
        width: 50,
        height: 49,
        decoration: const BoxDecoration(
            image: DecorationImage(
                image: AssetImage("assets/appbar.png"), fit: BoxFit.cover)),
      ),
      Text("ougeVilla")
    ],
  );
}

bool isdark = false;

Widget appbarDrawer() {
  return Drawer(
    child: ListView(
      children: [
        const UserAccountsDrawerHeader(
            currentAccountPicture: CircleAvatar(),
            accountName: Text("Naufal"),
            accountEmail: Text("Naufal202@gmail.com")),
        ListTile(
          leading: const Icon(Icons.settings),
          title: const Text("DarkMode"),
          trailing: CupertinoSwitch(
              value: isdark,
              onChanged: (value) {
                //need to use setstate insted of that we need to use valuenotifier
                isdark = value;
              }),
        ),
        divider,
        const Drawerbuttondata(
          title: "Order",
          subtitle: "Ongoing Orders,Recent Orders",
          icons: Icons.description,
        ),
        divider,
        const Drawerbuttondata(
            title: "Yours Wishlist",
            subtitle: "Your Save Products",
            icons: Icons.favorite_border),
        divider,
        const Drawerbuttondata(
            title: "Payment",
            subtitle: "SavedCards,Wallet",
            icons: Icons.wallet),
        divider,
        const Drawerbuttondata(
            title: "Saved Address",
            subtitle: "Home,Office..",
            icons: Icons.location_on_outlined),
        divider,
        const Drawerbuttondata(
            title: "Settings",
            subtitle: "Darkmode,RTL",
            icons: Icons.settings_rounded),
        const Divider(
          thickness: 12,
        ),
        const Drawerbuttondata(
            title: "Terms & Conditons",
            subtitle: "T&C For Use Of Platform",
            icons: CupertinoIcons.exclamationmark_square_fill),
        divider,
        const Drawerbuttondata(
            title: "Help/Customer Care",
            subtitle: "Customer Support,FAQs",
            icons: CupertinoIcons.phone),
        divider,
        MaterialButton(onPressed: () {}, child: const Text("Logout"))
      ],
    ),
  );
}

class Drawerbuttondata extends StatelessWidget {
  const Drawerbuttondata(
      {super.key,
      required this.title,
      required this.subtitle,
      required this.icons});
  final String title;
  final String subtitle;
  final IconData icons;

  @override
  Widget build(BuildContext context) {
    return ListTile(
      leading: Icon(icons),
      title: Text(title),
      subtitle: Text(subtitle),
    );
  }
}
