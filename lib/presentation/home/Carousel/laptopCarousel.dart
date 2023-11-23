import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:voguevilla/infrastucture/Api/api.dart';
import 'package:voguevilla/presentation/home/const/const.dart';
import 'package:voguevilla/presentation/home/homescreenbottomnavigation.dart';
import 'package:voguevilla/presentation/home/widget/ItemsCarousel.dart';
import 'package:voguevilla/presentation/home/widget/widget.dart';

class LaptopCarousel extends ConsumerWidget {
  const LaptopCarousel({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final data = ref.watch(futureLaptopCarouselProvider);

    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
          title: appbartitle(color: backgroundcolor),
          actions: getaction(context)),
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 8),
        child: Column(
          children: [
            ListTile(
                title: const Text("Laptops",
                    style: TextStyle(color: Colors.black, fontSize: 20)),
                subtitle: data.maybeWhen(
                    data: (data) => Text("${data.length} products"),
                    orElse: () => Container())),
            Expanded(
              child: GridView.builder(
                gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                    crossAxisCount: 2,
                    childAspectRatio: 0.6,
                    mainAxisSpacing: 10,
                    crossAxisSpacing: 10),
                itemCount: data.maybeWhen(
                  data: (data) {
                    return data.length;
                  },
                  orElse: () => 0,
                ),
                itemBuilder: (context, index) {
                  return ItemsCarousel(
                    index: index,
                    provider: futureLaptopCarouselProvider,
                  );
                },
              ),
            ),
          ],
        ),
      ),
    );
  }
}
