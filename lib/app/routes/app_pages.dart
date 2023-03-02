import 'package:get/get.dart';

import '../../pages/account/account_binding.dart';
import '../../pages/account/account_view.dart';
import '../../pages/alerts/alerts_binding.dart';
import '../../pages/alerts/alerts_view.dart';
import '../../pages/dashboard/dashboard_binding.dart';
import '../../pages/dashboard/dashboard_view.dart';
import '../modules/home/bindings/home_binding.dart';
import '../modules/home/views/home_view.dart';

part 'app_routes.dart';

class AppPages {
  AppPages._();

  static const INITIAL = Routes.DASHBOARD;

  static final routes = [
    GetPage(
      name: _Paths.HOME,
      page: () => HomeView(),
      binding: HomeBinding(),
    ),
    GetPage(
      name: _Paths.DASHBOARD,
      page: () => DashboardView(),
      binding: DashboardBinding(),
    ),
    GetPage(
      name: _Paths.ALERTS,
      page: () => AlertsView(),
      binding: AlertsBinding(),
    ),
    GetPage(
      name: _Paths.ACCOUNT,
      page: () => AccountView(),
      binding: AccountBinding(),
    ),
  ];
}
