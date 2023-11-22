import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:voguevilla/domain/mensWear.dart';
import 'package:voguevilla/presentation/home/const/const.dart';
import 'package:voguevilla/presentation/home/homescreenbottomnavigation.dart';
import 'package:voguevilla/presentation/home/widget/widget.dart';

class ItemsDetailsPage extends ConsumerWidget {
  final int index;
  final FutureProvider<List<MensWear>> provider;

  const ItemsDetailsPage(
      {super.key, required this.index, required this.provider});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final data = ref.watch(provider);
    return Scaffold(
      backgroundColor: Colors.grey,
      appBar: AppBar(
        actions: actions,
      ),
      body: data.when(
          data: (data) => ListView(
                children: [
                  CarouselSlider.builder(
                      itemCount: data.length,
                      itemBuilder: (context, intindex, _) {
                        print(index);
                        print(intindex);
                        return ContainerImage(image: data[index].image);
                      },
                      options: CarouselOptions(
                          height: 400, enableInfiniteScroll: true)),
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Text(
                      data[index].category.toUpperCase(),
                      style: const TextStyle(color: Colors.black, fontSize: 20),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Container(
                      height: 120,
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(20),
                          color: Colors.white),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          ListTile(
                            title: Text(
                              "₹${data[index].price}",
                              style: const TextStyle(color: Colors.black),
                            ),
                            subtitle: const Text("Inclusive of all taxes"),
                          ),
                          Padding(
                            padding: const EdgeInsets.only(left: 14.0),
                            child: Container(
                              width: 60,
                              height: 30,
                              decoration: BoxDecoration(
                                  color: Colors.green,
                                  borderRadius: BorderRadius.circular(20)),
                              child: Row(
                                children: [
                                  const SizedBox(
                                    width: 8,
                                  ),
                                  Text(
                                    data[index].rating.rate.toString(),
                                    style: const TextStyle(
                                        fontSize: 14,
                                        fontWeight: FontWeight.bold),
                                  ),
                                  const SizedBox(
                                    width: 5,
                                  ),
                                  const Icon(
                                    Icons.star,
                                    size: 19,
                                  )
                                ],
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                  ListTile(
                    title: Text(
                      data[index].title,
                      style: const TextStyle(color: Colors.black, fontSize: 20),
                    ),
                    subtitle: Text(
                      data[index].description,
                      overflow: TextOverflow.ellipsis,
                      maxLines: 3,
                    ),
                  ),
                  Row(
                    children: [
                      Padding(
                        padding: const EdgeInsets.only(left: 15, top: 15),
                        child: Container(
                          width: 200,
                          height: 65,
                          decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(20),
                              color: backgroundcolor),
                          child: const Center(
                            child: Text(
                              "Add To Cart",
                              style: TextStyle(
                                  fontSize: 16,
                                  fontWeight: FontWeight.bold,
                                  letterSpacing: 2),
                            ),
                          ),
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.only(left: 70, top: 15),
                        child: Container(
                          width: 60,
                          height: 60,
                          decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(16),
                              color: Colors.orange),
                          child: const Icon(Icons.favorite_border),
                        ),
                      ),
                    ],
                  ),
                  const SizedBox(
                    height: 40,
                  ),
                ],
              ),
          error: (error, stackTrace) => const Text("Error"),
          loading: () => const CircularProgressIndicator()),
    );
  }
}
