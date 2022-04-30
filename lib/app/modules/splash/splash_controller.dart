import 'package:get/get.dart';
import 'package:pizza_delivery/app/models/user_logged.dart';
import 'package:pizza_delivery/app/modules/home/home_page.dart';
import 'package:pizza_delivery/app/modules/login/login_page.dart';
import 'package:shared_preferences/shared_preferences.dart';

class SplashController extends GetxController {
  final _logged = UserLogged.empty.obs;

  UserLogged get logged => _logged.value;

  @override
  void onInit() {
    super.onInit();

    // Worker
    ever<UserLogged>(_logged, _checkIsLogged);

    checkLogin();
  }

  Future<void> checkLogin() async {
    final sp = await SharedPreferences.getInstance();

    if (sp.containsKey('user')) {
      _logged(UserLogged.authorized);
    } else {
      _logged(UserLogged.unautorized);
    }
  }

  void _checkIsLogged(UserLogged userLogged) {
    switch (userLogged) {
      case UserLogged.authorized:
        Get.offAllNamed(HomePage.routePage);
        break;
      case UserLogged.unautorized:
        Get.offAllNamed(LoginPage.routePage);
        break;
      case UserLogged.empty:
        break;
      default:
    }
  }
}
