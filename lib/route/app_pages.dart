import 'package:get/get.dart';
import 'package:shamogetx/pages/auth/logiinPages.dart';
import 'package:shamogetx/pages/auth/singinPages.dart';
import 'package:shamogetx/pages/homePage.dart';
import 'package:shamogetx/pages/splasPage.dart';
import 'package:shamogetx/route/name_page.dart';

class appPage {
  static final pages = [
    GetPage(name: RouteName.singinPages, page: () => singinPages()),
    GetPage(name: RouteName.LoginPages, page: () => LoginPages()),
    GetPage(name: RouteName.SplasPages, page: () => SplasPages()),
    GetPage(name: RouteName.HomePage, page: () => HomePage())
  ];
}
