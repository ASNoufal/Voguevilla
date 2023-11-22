import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:voguevilla/domain/CarouselApi/CarouselApi.dart';
import 'package:voguevilla/presentation/home/const/const.dart';
import 'package:voguevilla/presentation/home/widget/itemCarouseldetails.dart';

class ItemsCarousel extends ConsumerWidget {
  final int index;
  final FutureProvider<List<CarouselApi>> provider;
  const ItemsCarousel({super.key, required this.index, required this.provider});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final data = ref.watch(provider);
    return data.when(
        error: (error, stackTrace) => Text(error.toString()),
        loading: () => const CircularProgressIndicator(),
        data: (data) {
          return Column(
            children: [
              Stack(children: [
                GestureDetector(
                  onTap: () {
                    Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (builder) => ItemsCarouseldetails(
                                  index: index,
                                  provider: provider,
                                )));
                  },
                  child: Container(
                    height: 190,
                    decoration: BoxDecoration(
                        image: DecorationImage(
                            image: NetworkImage(data[index].thumbnail))),
                    child: Padding(
                      padding: const EdgeInsets.all(6.0),
                      child: Align(
                        alignment: Alignment.bottomLeft,
                        child: Container(
                          height: 30,
                          width: 82,
                          color: Colors.white,
                          child: Row(
                            children: [
                              const Icon(
                                Icons.star,
                                color: Colors.green,
                                size: 15,
                              ),
                              Text(
                                "${data[index].rating}",
                                style: const TextStyle(
                                    color: Colors.black, letterSpacing: 1),
                              ),
                              Text(
                                "(${data[index].id * 2})",
                                style: const TextStyle(color: Colors.grey),
                              ),
                            ],
                          ),
                        ),
                      ),
                    ),
                  ),
                ),
              ]),
              Padding(
                padding:
                    const EdgeInsets.symmetric(horizontal: 10, vertical: 5),
                child: Text(
                  "${data[index].title}",
                  maxLines: 2,
                  overflow: TextOverflow.ellipsis,
                  style: const TextStyle(color: Colors.black),
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(left: 10),
                child: Align(
                  alignment: Alignment.topLeft,
                  child: Text(
                    "₹${data[index].price}",
                    style: const TextStyle(
                        color: Colors.black,
                        fontSize: 15,
                        fontWeight: FontWeight.w600),
                  ),
                ),
              ),
              const SizedBox(
                height: 10,
              ),
              Row(
                children: [
                  Container(
                    width: 35,
                    height: 35,
                    decoration:
                        BoxDecoration(border: Border.all(color: Colors.grey)),
                    child: const Icon(
                      Icons.favorite_sharp,
                      color: Colors.grey,
                    ),
                  ),
                  const SizedBox(
                    width: 10,
                  ),
                  Expanded(
                    child: Container(
                      height: 36,
                      decoration: const BoxDecoration(color: backgroundcolor),
                      child: const Center(child: Text("Add to Bag")),
                    ),
                  )
                ],
              )
            ],
          );
        });
  }
}
