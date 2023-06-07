import 'package:get/get.dart';
import 'package:shamogetx/model/UserModel.dart';
import 'package:shamogetx/route/name_page.dart';
import 'package:shamogetx/services/authServices.dart';

class authController extends GetxController {
  final data = List<userModel>.empty().obs;
  Future<void> postData(
    String name,
    String username,
    String email,
    String password,
  ) async {
    try {
      if (name != '' && username != '' && email != '' && password != '') {
        if (GetUtils.isEmail(email)) {
          userModel datauser =
              await authServoces().SingIn(name, username, email, password);
          data.add(datauser);
          Get.toNamed(RouteName.LoginPages);
        } else {
          throw Exception('ini bukan email');
        }
      } else {
        throw Exception('ada kosong tolong isi');
      }
    } catch (e) {
      print('login gagal');
      rethrow;
    }
  }

  // Future<bool> hasilLogin(String email, String password) async {
  //   try {
  //     if (email != '' && password != '') {
  //       final kamu = await authServoces().login(email, password);
  //       if (email == kamu.email && password == kamu) {}
  //     }
  //   } catch (e) {}
  // }
}
