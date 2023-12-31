import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';
import 'package:voguevilla/presentation/home/Carousel/MenCarousel.dart';
import 'package:voguevilla/presentation/home/Carousel/JeweleryCarousel.dart';
import 'package:voguevilla/presentation/home/Carousel/laptopCarousel.dart';
import 'package:voguevilla/presentation/home/Carousel/WomenCarousel.dart';
import 'package:voguevilla/presentation/home/const/const.dart';
import 'package:voguevilla/presentation/home/electronics/electronics.dart';
import 'package:voguevilla/presentation/home/getallproduct/GetAllProductPage.dart';
import 'package:voguevilla/presentation/home/homescreenbottomnavigation.dart';
import 'package:voguevilla/presentation/home/Men/menItemsPage.dart';
import 'package:voguevilla/presentation/home/jewelery/jewelery.dart';
import 'package:voguevilla/presentation/home/widget/widget.dart';
import 'package:voguevilla/presentation/home/women/womenItemsPage.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return ListView(
      children: [
        const SearchBarField(),
        Row(mainAxisAlignment: MainAxisAlignment.spaceAround, children: [
          GestureDetector(
            onTap: () {
              Navigator.push(context, MaterialPageRoute(builder: (builder) {
                return const MenItemsPage();
              }));
            },
            child: const CatagoryCircleAvatar(
              itemname: "Men",
              image: AssetImage("assets/22654-6-man.png"),
            ),
          ),
          GestureDetector(
            onTap: () {
              Navigator.push(context, MaterialPageRoute(builder: (builder) {
                return const WomenItemsPage();
              }));
            },
            child: const CatagoryCircleAvatar(
              itemname: "Women",
              image: AssetImage("assets/23068-1-brunette-file.png"),
            ),
          ),
          GestureDetector(
            onTap: () {
              Navigator.push(context, MaterialPageRoute(builder: (builder) {
                return const JeweleryItemsPage();
              }));
            },
            child: const CatagoryCircleAvatar(
              itemname: "jewellery",
              image: AssetImage("assets/jewellery-png-36045.png"),
            ),
          ),
          GestureDetector(
            onTap: () {
              Navigator.push(context, MaterialPageRoute(builder: (builder) {
                return const ElectronicsItems();
              }));
            },
            child: const CatagoryCircleAvatar(
              itemname: "electronics",
              image: AssetImage("assets/electricity.jpeg"),
            ),
          )
        ]),
        CarouselSlider(
            items: carouseslider
                .map((e) => GestureDetector(
                      onTap: () {
                        int data = carouseslider.indexOf(e);
                        Navigator.push(context,
                            MaterialPageRoute(builder: (builder) {
                          return carouselOptions[data];
                        }));
                      },
                      child: ContainerImage(
                        image: e,
                      ),
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
        Padding(
          padding: EdgeInsets.symmetric(horizontal: 10, vertical: 5),
          child: GestureDetector(
            onTap: () {
              Navigator.push(context, MaterialPageRoute(builder: (builder) {
                return GetAllProductPage();
              }));
            },
            child: ContainerImage(
                image:
                    "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcTvycWxQeEPYBs9YiXkHxfZqK2aWRfrPVNT1w&usqp=CAU"),
          ),
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

List<Widget> carouselOptions = [
  MenCarousel(),
  WomenCarousel(),
  JeweleryCarousel(),
  LaptopCarousel()
];
