import 'package:flutter/widgets.dart';
import 'package:get/get.dart';

class registrasiCOntroller extends GetxController {
  late TextEditingController name;
  late TextEditingController username;
  late TextEditingController email;
  late TextEditingController password;
  @override
  void onInit() {
    // TODO: implement onInit
    name = TextEditingController();
    username = TextEditingController();
    email = TextEditingController();
    password = TextEditingController();
    super.onInit();
  }

  @override
  void onClose() {
    // TODO: implement onClose
    name.dispose();
    username.dispose();
    email.dispose();
    password.dispose();
    super.onClose();
  }
}
