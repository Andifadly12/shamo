import 'package:flutter/widgets.dart';
import 'package:get/get.dart';

class LoginControler extends GetxController {
  late TextEditingController email;
  late TextEditingController password;

  @override
  void onInit() {
    // TODO: implement onInit
    email = TextEditingController();
    password = TextEditingController();
    super.onInit();
  }

  @override
  void onClose() {
    // TODO: implement onClose
    email.dispose();
    password.dispose();
    super.onClose();
  }
}
