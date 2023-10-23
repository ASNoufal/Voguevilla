import 'package:flutter/material.dart';
import 'package:voguevilla/firebase_options.dart';
import 'package:voguevilla/presentation/home/homescreen.dart';
import 'package:voguevilla/presentation/splash/splashscreen.dart';
import 'package:firebase_core/firebase_core.dart';

ValueNotifier<bool> navigatetonextpage = ValueNotifier(false);

Future<void> main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp(
    options: DefaultFirebaseOptions.currentPlatform,
  );
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),
      home: ValueListenableBuilder(
          valueListenable: navigatetonextpage,
          builder: (BuildContext context, bool ishomescreen, _) {
            if (ishomescreen) {
              return const HomeScreen();
            } else {
              Future.delayed(const Duration(seconds: 5), () {
                navigatetonextpage.value = true;
              });
            }
            return const Splashscreen();
          }),
    );
  }
}
