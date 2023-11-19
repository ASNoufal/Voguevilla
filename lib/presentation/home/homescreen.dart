import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:voguevilla/presentation/home/widget/widget.dart';

import 'const/const.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        title: appbartitle(),
        actions: const [
          sizedbox,
          Icon(
            CupertinoIcons.bell,
            size: 25,
          ),
          sizedbox,
          Icon(
            CupertinoIcons.heart,
            size: 25,
          ),
          sizedbox,
          Icon(
            CupertinoIcons.bag,
            size: 25,
          ),
          sizedbox
        ],
      ),
      body: Column(
        children: [
          SearchBarField(),
        ],
      ),
    );
  }
}
