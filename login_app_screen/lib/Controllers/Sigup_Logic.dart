import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:login_app_screen/models/person.dart';

class SigupController  extends GetxController{

  TextEditingController nameController = TextEditingController() ;
  TextEditingController emailController = TextEditingController() ;
  TextEditingController passwordController = TextEditingController() ;

  createUserwithFirebase()async{
    var name = nameController.text ;
    var email = emailController.text ;
    var password = passwordController.text ;

    if(email.isEmpty || password.isEmpty){
      Get.snackbar(
          "Error",
          "Please fill the all fields");
    }

  try {
    UserCredential userCredential = await  FirebaseAuth.instance.createUserWithEmailAndPassword(email: email, password: password) ;
      Person newPerson = Person(name: name, title: name, imageUrl: "", createdAt: DateTime.now());
      FirebaseFirestore.instance.collection("PersonTitle").doc(name).set(
        newPerson.toJson()
      );

      if(userCredential.user != null){
        Get.snackbar("Success", "Sighup Successfully");
      }
  } on Exception catch (e) {
      if (kDebugMode) {
        print(e.toString());
      }
    // TODO
  }
  }
}