import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/cupertino.dart';
import 'package:get/get.dart';

class Firebase_authLogic extends GetxController {

  final auth = FirebaseAuth.instance;
  final emailController = TextEditingController();
  final passController = TextEditingController();

  
}
