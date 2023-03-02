
import 'package:get/get.dart';



import '../../app/modules/home/controllers/home_controller.dart';
import '../account/account_controller.dart';
import '../posts/posts_controller.dart';
import 'dashboard_controller.dart';


class DashboardBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut<DashboardController>(
          () => DashboardController(),
    );
    Get.lazyPut<HomeController>(
          () => HomeController(),
    );
    Get.lazyPut<AccountController>(
          () => AccountController(),
    );
    Get.lazyPut<PostsController>(
          () => PostsController(),
    );
  }
}