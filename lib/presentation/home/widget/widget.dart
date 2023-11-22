import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:voguevilla/presentation/home/Carousel/laptopCarousel.dart';
import 'package:voguevilla/presentation/home/Unmissabledeals/Mobile.dart';
import 'package:voguevilla/presentation/home/Unmissabledeals/Perfume.dart';
import 'package:voguevilla/presentation/home/Unmissabledeals/SkinCare.dart';
import 'package:voguevilla/presentation/home/const/const.dart';

Widget appbartitle({Color? color}) {
  return Row(
    children: [
      Text(
        "VougeVilla",
        style: GoogleFonts.courgette(
          color: color,
          fontSize: 30,
          fontWeight: FontWeight.bold,
        ),
      ),
    ],
  );
}

class SearchBarField extends StatelessWidget {
  const SearchBarField({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 15, vertical: 10),
      child: SizedBox(
        height: 45,
        child: TextFormField(
          decoration: InputDecoration(
              labelStyle: const TextStyle(fontWeight: FontWeight.w400),
              labelText: "Search on Voguevilla",
              prefixIcon: const Icon(
                Icons.search,
                color: backgroundcolor,
              ),
              fillColor: Colors.white,
              filled: true,
              border: OutlineInputBorder(
                borderRadius: BorderRadius.circular(30),
              )),
        ),
      ),
    );
  }
}

class CatagoryCircleAvatar extends StatelessWidget {
  final String itemname;
  final AssetImage image;
  const CatagoryCircleAvatar(
      {super.key, required this.itemname, required this.image});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Stack(
          children: [
            CircleAvatar(
              radius: 40,
              backgroundColor: const Color(0xFF123D56),
              backgroundImage: image,
            ),
          ],
        ),
        const SizedBox(
          height: 10,
        ),
        Text(
          itemname,
          style: const TextStyle(fontWeight: FontWeight.bold),
        )
      ],
    );
  }
}

class ContainerImage extends StatelessWidget {
  final String image;
  const ContainerImage({super.key, required this.image});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(4),
      child: Container(
          width: double.infinity,
          height: 200,
          decoration: BoxDecoration(
              image: DecorationImage(
                  image: NetworkImage(
                    image,
                  ),
                  fit: BoxFit.fill),
              borderRadius: BorderRadius.circular(10))),
    );
  }
}

class UnMissableDeals extends StatelessWidget {
  const UnMissableDeals({super.key});

  @override
  Widget build(BuildContext context) {
    return GridView.builder(
        shrinkWrap: true,
        itemCount: 4,
        gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
          mainAxisSpacing: 4,
          crossAxisSpacing: 5,
          crossAxisCount: 2,
        ),
        itemBuilder: ((context, index) {
          return Padding(
            padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 5),
            child: GestureDetector(
              onTap: () {
                Navigator.push(
                    context,
                    MaterialPageRoute(
                        builder: (builder) => unmissableDealswidget[index]));
              },
              child: Container(
                decoration: BoxDecoration(
                  image: DecorationImage(
                      fit: BoxFit.cover,
                      image: AssetImage(
                        unmissableDealsimage[index],
                      )),
                  borderRadius: BorderRadius.circular(20),
                ),
                width: 50,
              ),
            ),
          );
        }));
  }
}

List<Widget> unmissableDealswidget = const [
  MobileUnmissable(),
  LaptopCarousel(),
  SkinCareUnmissabledeals(),
  FraganceUnmissabledeals()
];
List<String> unmissableDealsimage = [
  "assets/mobileoffers.jpeg",
  "assets/laptop.jpeg",
  "assets/skincare.jpeg",
  "assets/fragrances.jpeg"
];
