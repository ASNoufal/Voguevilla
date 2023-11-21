import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:voguevilla/firebase_options.dart';
import 'package:voguevilla/presentation/home/const/const.dart';
import 'package:voguevilla/presentation/home/homescreenbottomnavigation.dart';
import 'package:voguevilla/presentation/splash/splashscreen.dart';
import 'package:firebase_core/firebase_core.dart';

ValueNotifier<bool> navigatetonextpage = ValueNotifier(false);

Future<void> main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp(
    options: DefaultFirebaseOptions.currentPlatform,
  );
  runApp(ProviderScope(child: MyApp()));
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        brightness: Brightness.dark,
        scaffoldBackgroundColor: backgroundcolor,
        appBarTheme: const AppBarTheme(color: Colors.transparent),
        bottomNavigationBarTheme: const BottomNavigationBarThemeData(
            unselectedItemColor: Colors.black,
            backgroundColor: Colors.white,
            selectedItemColor: backgroundcolor),
        useMaterial3: true,
      ),
      home: ValueListenableBuilder(
          valueListenable: navigatetonextpage,
          builder: (BuildContext context, bool ishomescreen, _) {
            if (ishomescreen) {
              return const HomeScreenBottomNavigation();
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
