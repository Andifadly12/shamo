import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:shamogetx/controller/authController.dart';
import 'package:shamogetx/controller/registrasiController.dart';
import 'package:shamogetx/route/name_page.dart';
import 'package:shamogetx/services/authServices.dart';

class singinPages extends StatelessWidget {
  singinPages({super.key});
  final dataSing = Get.put(registrasiCOntroller());
  final signin = Get.put(authController());
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xff2B2937),
      body: ListView(
        children: [
          Padding(
            padding: const EdgeInsets.all(30.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  'Sing Up',
                  style: TextStyle(
                      color: Colors.white,
                      fontSize: 24,
                      fontWeight: FontWeight.w600,
                      fontFamily: "ariel"),
                ),
                SizedBox(
                  height: 2,
                ),
                Text(
                  'Register and Happy Shoping',
                  style: TextStyle(color: Color(0xff504F5E), fontSize: 14),
                ),
                SizedBox(
                  height: 70,
                ),
                Text(
                  'Full Name',
                  style: TextStyle(
                      fontSize: 16,
                      fontWeight: FontWeight.w600,
                      color: Colors.white),
                ),
                SizedBox(
                  height: 12,
                ),
                Container(
                  height: 50,
                  width: 315,
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(12),
                      color: Color(0xff504F5E)),
                  child: TextField(
                    controller: dataSing.name,
                    style: TextStyle(color: Colors.white),
                    decoration: InputDecoration(
                        hintText: 'Your Full Name',
                        hintStyle: TextStyle(color: Colors.white),
                        icon: Container(
                          margin: EdgeInsets.only(left: 19),
                          width: 17,
                          child: Image.asset(
                            'assets/username.png',
                          ),
                        ),
                        border:
                            OutlineInputBorder(borderSide: BorderSide.none)),
                  ),
                ),
                SizedBox(
                  height: 20,
                ),
                Text(
                  'Username',
                  style: TextStyle(
                      fontSize: 16,
                      fontWeight: FontWeight.w600,
                      color: Colors.white),
                ),
                SizedBox(
                  height: 12,
                ),
                Container(
                  height: 50,
                  width: 315,
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(12),
                      color: Color(0xff504F5E)),
                  child: TextField(
                    controller: dataSing.username,
                    style: TextStyle(color: Colors.white),
                    decoration: InputDecoration(
                        hintText: 'Your Username',
                        hintStyle: TextStyle(color: Colors.white),
                        icon: Container(
                          margin: EdgeInsets.only(left: 19),
                          width: 17,
                          child: Image.asset(
                            'assets/Union.png',
                          ),
                        ),
                        border:
                            OutlineInputBorder(borderSide: BorderSide.none)),
                  ),
                ),
                SizedBox(
                  height: 20,
                ),
                Text(
                  'Email  Address',
                  style: TextStyle(
                      fontSize: 16,
                      fontWeight: FontWeight.w600,
                      color: Colors.white),
                ),
                SizedBox(
                  height: 12,
                ),
                Container(
                  height: 50,
                  width: 315,
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(12),
                      color: Color(0xff504F5E)),
                  child: TextField(
                    style: TextStyle(color: Colors.white),
                    controller: dataSing.email,
                    decoration: InputDecoration(
                        hintText: 'Your Email Addres',
                        hintStyle: TextStyle(color: Colors.white),
                        icon: Container(
                          margin: EdgeInsets.only(left: 19),
                          width: 17,
                          child: Image.asset(
                            'assets/email.png',
                          ),
                        ),
                        border:
                            OutlineInputBorder(borderSide: BorderSide.none)),
                  ),
                ),
                SizedBox(
                  height: 20,
                ),
                Text(
                  'Password',
                  style: TextStyle(
                      fontSize: 16,
                      fontWeight: FontWeight.w600,
                      color: Colors.white),
                ),
                SizedBox(
                  height: 12,
                ),
                Container(
                  height: 50,
                  width: 315,
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(12),
                      color: Color(0xff504F5E)),
                  child: TextField(
                    controller: dataSing.password,
                    style: TextStyle(color: Colors.white),
                    obscureText: true,
                    decoration: InputDecoration(
                        hintText: 'Your Password',
                        hintStyle: TextStyle(color: Colors.white),
                        icon: Container(
                          margin: EdgeInsets.only(left: 19),
                          width: 17,
                          child: Image.asset(
                            'assets/Password.png',
                          ),
                        ),
                        border:
                            OutlineInputBorder(borderSide: BorderSide.none)),
                  ),
                ),
                SizedBox(
                  height: 30,
                ),
                Container(
                  height: 50,
                  width: 315,
                  decoration:
                      BoxDecoration(borderRadius: BorderRadius.circular(30)),
                  child: ElevatedButton(
                      style: ElevatedButton.styleFrom(
                          shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(12)),
                          backgroundColor: Color(0xff6C5ECF)),
                      onPressed: () async {
                        OnTap() {
                          print(authServoces()
                              .SingIn('name', 'username', 'email', 'password'));
                        }

                        await signin.postData(
                          dataSing.name.text,
                          dataSing.username.text,
                          dataSing.email.text,
                          dataSing.password.text,
                        );
                      },
                      child: Center(
                        child: Text(
                          'Sing Up',
                          style: TextStyle(
                              fontSize: 16, fontWeight: FontWeight.w600),
                        ),
                      )),
                ),
              ],
            ),
          ),
        ],
      ),
      bottomNavigationBar: BottomAppBar(
        child: Padding(
          padding: const EdgeInsets.only(bottom: 25),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text(
                "Already have an account?",
                style: TextStyle(
                    fontSize: 12,
                    fontWeight: FontWeight.w400,
                    color: Color(0xff504F5E)),
              ),
              TextButton(
                  onPressed: () {
                    Get.toNamed(RouteName.LoginPages);
                  },
                  child: Text('Sing In',
                      style: TextStyle(
                          fontSize: 12,
                          fontWeight: FontWeight.w600,
                          color: Color(0xff6C5ECF))))
            ],
          ),
        ),
        color: Color(0xff2B2937),
      ),
    );
  }
}
