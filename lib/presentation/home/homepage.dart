import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';
import 'package:voguevilla/presentation/home/const/const.dart';
import 'package:voguevilla/presentation/home/homescreenbottomnavigation.dart';
import 'package:voguevilla/presentation/home/Men/menItemsPage.dart';
import 'package:voguevilla/presentation/home/widget/widget.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return ListView(
      children: [
        const SearchBarField(),
        Row(mainAxisAlignment: MainAxisAlignment.spaceAround, children: [
          InkWell(
            onTap: () {
              Navigator.push(context, MaterialPageRoute(builder: (builder) {
                return MenItemsPage();
              }));
            },
            child: CatagoryCircleAvatar(
              itemname: "Men",
              image: AssetImage("assets/22654-6-man.png"),
            ),
          ),
          CatagoryCircleAvatar(
            itemname: "Women",
            image: AssetImage("assets/23068-1-brunette-file.png"),
          ),
          CatagoryCircleAvatar(
            itemname: "jewellery",
            image: AssetImage("assets/jewellery-png-36045.png"),
          ),
          CatagoryCircleAvatar(
            itemname: "electronics",
            image: AssetImage("assets/electricity.jpeg"),
          )
        ]),
        CarouselSlider(
            items: carouseslider
                .map((e) => ContainerImage(
                      image: e,
                    ))
                .toList(),
            options: CarouselOptions(
              disableCenter: true,
              autoPlay: false,

              /// need to change while finish the app (autoplay to true)
              enlargeCenterPage: true,
              onPageChanged: (index, reason) {
                currentindex.value = index;
              },
            )),
        ValueListenableBuilder(
            valueListenable: currentindex,
            builder: (context, index, _) {
              return Center(
                child: AnimatedSmoothIndicator(
                  activeIndex: currentindex.value,
                  count: carouseslider.length,
                  effect: const JumpingDotEffect(dotWidth: 5, dotHeight: 5),
                ),
              );
            }),
        sizedboxheight,
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            const Text(
              "Handpicked for Shopping",
              style: TextStyle(
                  color: Colors.grey,
                  fontSize: 12,
                  fontWeight: FontWeight.w600),
            ),
            Container(
              color: Colors.grey,
              height: 45,
              width: 1,
            ),
            const Text(
              "100% Orginal Product",
              style: TextStyle(
                  color: Colors.grey,
                  fontSize: 12,
                  fontWeight: FontWeight.w600),
            ),
          ],
        ),
        const Padding(
          padding: EdgeInsets.symmetric(horizontal: 10, vertical: 5),
          child: ContainerImage(
              image:
                  "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcTvycWxQeEPYBs9YiXkHxfZqK2aWRfrPVNT1w&usqp=CAU"),
        ),
        sizedboxheight,
        const Center(
            child: Text(
          "Unmissable Deals",
          style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
        )),
        const UnMissableDeals(),
      ],
    );
  }
}
