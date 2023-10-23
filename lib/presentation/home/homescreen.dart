import 'package:flutter/material.dart';
import 'package:voguevilla/presentation/home/widget/widget.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar:
            AppBar(backgroundColor: Colors.transparent, title: appbartitle()),
        drawer: appbarDrawer());
  }
}
