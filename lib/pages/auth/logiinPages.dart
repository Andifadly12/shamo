import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:shamogetx/controller/loginController.dart';
import 'package:shamogetx/route/name_page.dart';

class LoginPages extends StatelessWidget {
  LoginPages({super.key});
  final datalogin = Get.put(LoginControler());
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xff2B2937),
      body: Column(
        children: [
          Padding(
            padding: const EdgeInsets.all(30.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  'Login  ',
                  style: TextStyle(
                      color: Colors.white,
                      fontSize: 24,
                      fontWeight: FontWeight.w600,
                      fontFamily: "ariel"),
                ),
                Text(
                  'Sign In to Countinue',
                  style: TextStyle(color: Color(0xff504F5E), fontSize: 14),
                ),
                SizedBox(
                  height: 70,
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
                    controller: datalogin.email,
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
                    controller: datalogin.password,
                    obscureText: true,
                    style: TextStyle(color: Colors.white),
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
                      onPressed: () {
                        Get.toNamed(RouteName.HomePage);
                      },
                      child: Center(
                        child: Text(
                          'Sing In',
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
                "Don't have an account?",
                style: TextStyle(
                    fontSize: 12,
                    fontWeight: FontWeight.w400,
                    color: Color(0xff504F5E)),
              ),
              TextButton(
                  onPressed: () {
                    Get.offNamed(RouteName.singinPages);
                  },
                  child: Text('Sing up',
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
