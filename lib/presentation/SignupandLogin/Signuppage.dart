import 'package:firebase_auth/firebase_auth.dart';
import 'package:firebase_database/firebase_database.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:voguevilla/presentation/SignupandLogin/validation.dart';
import 'package:voguevilla/presentation/home/homescreenbottomnavigation.dart';

class SignupPage extends ConsumerStatefulWidget {
  const SignupPage({super.key});

  @override
  ConsumerState<SignupPage> createState() => _SignupPageState();
}

class _SignupPageState extends ConsumerState<SignupPage> {
  var uid;
  final validation = Validation();
  final usernameController = TextEditingController();
  final emailController = TextEditingController();
  final phonenumberController = TextEditingController();
  final passwordController = TextEditingController();

  void getvalidation() {
    validation.checkInternetConnection(context);
    validationcontroller(context);
  }

  void getauth() async {
    FirebaseAuth firebaseAuth = FirebaseAuth.instance;

    await firebaseAuth
        .createUserWithEmailAndPassword(
            email: emailController.text, password: passwordController.text)
        .then((value) =>
            Navigator.push(context, MaterialPageRoute(builder: (context) {
              return HomeScreenBottomNavigation();
            })));

    final User? user = firebaseAuth.currentUser;
    uid = user!.uid;
    print(uid);
  }

  void getdatabase() async {
    print(uid);
    DatabaseReference ref = FirebaseDatabase.instance.ref(uid);
    await ref.set({
      "Uuid": uid,
      "UserName": usernameController.text.trim(),
      "Email": emailController.text.trim(),
      "phoneNumber": phonenumberController.text.trim(),
      "password": passwordController.text.trim()
    });
  }

  void validationcontroller(BuildContext context) {
    if (usernameController.text.trim().length <= 3) {
      validation.showsnackbar("UserName is too short", context);
    } else if (!emailController.text.trim().contains("@")) {
      validation.showsnackbar("Wrong Email ", context);
    } else if (phonenumberController.text.trim().length < 9) {
      validation.showsnackbar("please enter the correctphoneNumber", context);
    } else if (passwordController.text.trim().length <= 6) {
      validation.showsnackbar("wrong password", context);
    } else {
      getauth();
      getdatabase();
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(25),
          child: Column(children: [
            Image.asset(
              "assets/vouguevilla-high-resolution-logo-transparent.png",
              width: 200,
              height: 200,
            ),
            TextFormField(
              controller: usernameController,
              decoration: const InputDecoration(labelText: "UserName"),
            ),
            TextFormField(
              controller: emailController,
              decoration: const InputDecoration(labelText: "Email"),
            ),
            TextFormField(
              controller: phonenumberController,
              decoration: const InputDecoration(labelText: "phoneNumber"),
            ),
            TextFormField(
              controller: passwordController,
              obscureText: true,
              decoration: const InputDecoration(labelText: "Password"),
            ),
            const SizedBox(
              height: 30,
            ),
            ElevatedButton(
              onPressed: () {
                getvalidation();
              },
              style: ElevatedButton.styleFrom(
                  padding:
                      const EdgeInsets.symmetric(horizontal: 20, vertical: 15),
                  shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(10))),
              child: const Text("Create Account"),
            )
          ]),
        ),
      ),
    );
  }
}
