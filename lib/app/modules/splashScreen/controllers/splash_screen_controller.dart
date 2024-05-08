import 'package:get/get.dart';
import 'package:mini_project_chapter10/app/data/repository/auth_repository.dart';
import 'package:mini_project_chapter10/app/routes/app_pages.dart';

class SplashScreenController extends GetxController {
  @override
  void onReady() {
    super.onReady();
    Future.delayed(const Duration(seconds: 3), () {
      AuthRepository().firebaseUser.value == null
          ? Get.offAllNamed(Routes.LOGIN)
          : Get.offAllNamed(Routes.HOME);
    });
    super.onReady();
  }
}
