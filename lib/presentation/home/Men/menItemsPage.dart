import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:voguevilla/infrastucture/Api/api.dart';
import 'package:voguevilla/presentation/home/const/const.dart';
import 'package:voguevilla/presentation/home/homescreenbottomnavigation.dart';
import 'package:voguevilla/presentation/home/widget/ItemsContainerModel.dart';
import 'package:voguevilla/presentation/home/widget/widget.dart';

class MenItemsPage extends StatelessWidget {
  const MenItemsPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar:
          AppBar(title: appbartitle(color: backgroundcolor), actions: actions),
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 8),
        child: Column(
          children: [
            const ListTile(
              title: Text("Mens Wear",
                  style: TextStyle(color: Colors.black, fontSize: 20)),
              subtitle: Text(
                "Total//addfrom the api products",
              ),
            ),
            Consumer(
              builder: (context, ref, _) {
                final data = ref.watch(futureapiprovider);
                return Expanded(
                  child: GridView.builder(
                    gridDelegate:
                        const SliverGridDelegateWithFixedCrossAxisCount(
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
                      return ItemContainer(
                        index: index,
                        provider: futureapiprovider,
                      );
                    },
                  ),
                );
              },
            ),
          ],
        ),
      ),
    );
  }
}
