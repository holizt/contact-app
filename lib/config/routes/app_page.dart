import 'package:get/get.dart';
import '../../modules/new_contact/pages/new_contact_page.dart';
import '../../modules/home_page/pages/home_page.dart';
import '../../constant/app_routes.dart';

abstract class AppPages {
  static const initial = Routes.home;
  static final routes = [
    GetPage(name: Routes.home, page: () => HomePage()),
    GetPage(name: Routes.newContact, page: () => NewContactPage()),
  ];
}
