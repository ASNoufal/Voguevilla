import 'package:connectivity_plus/connectivity_plus.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:voguevilla/presentation/SignupandLogin/Signuppage.dart';

class Validation {
  void checkInternetConnection(BuildContext context) async {
    final connectivityresult = await Connectivity().checkConnectivity();
    if (!context.mounted) {
      return;
    } else if (connectivityresult == ConnectivityResult.none) {
      print(connectivityresult);
      showsnackbar("Please Connect to the internet", context);
    } else {
      print("connected");
    }
  }

  void showsnackbar(String data, BuildContext context) {
    ScaffoldMessenger.of(context).showSnackBar(SnackBar(content: Text(data)));
  }
}
