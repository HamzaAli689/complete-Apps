import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:login_app_screen/Screens/next_screens.dart';

import '../models/person.dart';

class LoginController extends GetxController {
  TextEditingController emailController = TextEditingController();

  TextEditingController passwordController = TextEditingController();

  // LoginUserwithFirebase() async {
  //   var email = emailController.text;
  //   var password = passwordController.text;
  //
  //   if (email.isEmpty || password.isEmpty) {
  //     Get.snackbar("Error", "Please fill the all fields");
  //   }
  //
  //   try {
  //     UserCredential userCredential = await FirebaseAuth.instance
  //         .createUserWithEmailAndPassword(email: email, password: password);
  //
  //     if (userCredential.user != null) {
  //       Get.snackbar("Success", "Sighup Successfully");
  //       Get.toNamed("/next");
  //     }
  //     else{
  //       Get.snackbar("Error", "User not logedin");
  //     }
  //   } on Exception catch (e) {
  //     if (kDebugMode) {
  //       print(e.toString());
  //     }
  //     // TODO
  //   }
  // }
  Future<void> loginUser() async {
    if (emailController.text.isEmpty || passwordController.text.isEmpty) {
      Get.snackbar("Error", "Email and Password cannot be empty.");
      return;
    }

    try {
      UserCredential myUser = await FirebaseAuth.instance.signInWithEmailAndPassword(
        email: emailController.text.trim(),
        password: passwordController.text.trim(),
      );

      if (myUser.user != null) {
        Get.to(() => NextScreens(), transition: Transition.leftToRight);
      } else {
        Get.snackbar("Error", "Failed to log in. Please try again.");
      }
    } on FirebaseAuthException catch (e) {
      Get.snackbar("Error", e.message ?? "An error occurred during login.");
    } catch (e) {
      Get.snackbar("Error", "An unexpected error occurred: $e");
    }
  }
}
