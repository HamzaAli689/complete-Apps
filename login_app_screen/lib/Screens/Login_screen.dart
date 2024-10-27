import 'package:flutter/material.dart';
import 'package:gap/gap.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:login_app_screen/Controllers/Login_Logic.dart';
import 'package:login_app_screen/widgets/color.dart';
import 'package:login_app_screen/widgets/signup_btn.dart';
import 'package:login_app_screen/widgets/text_field.dart';


class LoginScreen extends StatelessWidget {
  final logic = Get.put(LoginController());

  LoginScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        backgroundColor: Colors.white,
        body: SizedBox(
          height:
              MediaQuery.of(context).size.height, // Set height to screen size
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
                      title: 'Login',
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
                          "Login",
                          style: TextStyle(
                              fontSize: 45,
                              color: Colors.white,
                              fontWeight: FontWeight.bold),
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Text(
                              "Sign In to continue.",
                              style:
                                  TextStyle(color: Colors.white, fontSize: 12),
                            ),
                          ],
                        ),
                        Gap(15),
                        MyTextField(
                          Myhint: 'example34@gmail.com',
                          Mylabel: 'E-mail',
                          hide: false,
                          MyController: null,
                        ),
                        Gap(15),
                        MyTextField(
                          Myhint: 'Password',
                          Mylabel: 'Password',
                          hide: true,
                          MyController: null,
                        ),
                        Gap(20),
                        MyCustomBtn(
                          title: 'Login', onTap: () {  },
                        ),
                        Gap(10),
                        MycustomeText(title: "Forget Password?"),
                        Gap(7),
                        InkWell(
                          onTap: () {
                            Get.toNamed("/signup");
                          },
                          child: Text(
                            "Sign Up !",
                            style: TextStyle(color: Colors.white, fontSize: 12),
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
      ),
    );
  }
}
