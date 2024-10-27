import 'package:flutter/material.dart';
import 'package:gap/gap.dart';
import 'package:get/get.dart';
import 'package:login_app_screen/widgets/color.dart';
import 'package:login_app_screen/widgets/signup_btn.dart';
import 'package:login_app_screen/widgets/text_field.dart';
import '../Controllers/Sigup_Logic.dart';
import 'next_screens.dart';

class SignUpScreen extends StatelessWidget {
  SignUpScreen({super.key});

  // Initialize the SignupController using GetX
  final SigupController logic = Get.put(SigupController());

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: SizedBox(
        height: MediaQuery.of(context).size.height, // Set height to screen size
        width: MediaQuery.of(context).size.width,
        child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              InkWell(
                onTap: () {
                  Get.toNamed("/home");
                },
                child: Padding(
                  padding: const EdgeInsets.only(bottom: 20),
                  child: MtBtn(
                    title: 'Sign Up',
                  ),
                ),
              ),
              Container(
                height: MediaQuery.of(context).size.height * .77,
                width: MediaQuery.of(context).size.width,
                decoration: BoxDecoration(
                  color: BBcolor,
                  borderRadius: BorderRadius.only(
                    topRight: Radius.circular(30),
                    topLeft: Radius.circular(30),
                  ),
                ),
                child: Padding(
                  padding: const EdgeInsets.all(20),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text(
                        "Create New",
                        style: TextStyle(fontSize: 30, color: Colors.white),
                      ),
                      Text(
                        "Account",
                        style: TextStyle(
                          fontSize: 27,
                          color: Colors.white,
                        ),
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Text(
                            "Already Registered?",
                            style: TextStyle(color: Colors.white, fontSize: 12),
                          ),
                          Gap(7),
                          InkWell(
                            onTap: () {
                              Get.toNamed("/login");
                            },
                            child: Text(
                              "Login!",
                              style: TextStyle(
                                  color: Colors.white, fontSize: 12),
                            ),
                          ),
                        ],
                      ),
                      Gap(15),
                      MyTextField(
                        Myhint: 'Enter Name',
                        Mylabel: 'Name',
                        hide: false,
                        MyController: logic.nameController,
                      ),
                      Gap(15),
                      MyTextField(
                        Myhint: 'example34@gmail.com',
                        Mylabel: 'E-mail',
                        hide: false,
                        MyController: logic.emailController,
                      ),
                      Gap(15),
                      MyTextField(
                        Myhint: 'Password',
                        Mylabel: 'Password',
                        hide: true,
                        MyController: logic.passwordController,
                      ),
                      Gap(20),
                      MyCustomBtn(
                        title: 'Sign Up',
                        onTap: () async {
                          await logic.createUserwithFirebase();
                          Get.toNamed("/next");

                        },
                      ),
                      Gap(10),
                      MycustomeText(title: "Already have an account?"),
                      Gap(7),
                      InkWell(
                        onTap: () {
                          Get.toNamed("/login");
                        },
                        child: Text(
                          "Login!",
                          style:
                          TextStyle(color: Colors.white, fontSize: 12),
                        ),
                      ),
                    ],
                  ),
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
