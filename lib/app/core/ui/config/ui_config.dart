import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:pizza_delivery/app/modules/home/home_bindings.dart';
import 'package:pizza_delivery/app/modules/login/login_bindings.dart';
import 'package:pizza_delivery/app/modules/login/login_page.dart';
import 'package:pizza_delivery/app/modules/splash/splash_bindings.dart';
import 'package:pizza_delivery/app/modules/splash/splash_page.dart';

import '../../../modules/home/home_page.dart';

class UiConfig {
  UiConfig._();

  static const title = 'Pizza Delivery';

  static final theme = ThemeData(
    primaryColor: const Color(0xFF9d0000),
    primaryColorLight: const Color.fromARGB(255, 155, 40, 40),
    primarySwatch: Colors.red,
    fontFamily: 'Lexend',
  );

  static final routes = <GetPage>[
    GetPage(
      name: SplashPage.routePage,
      page: () => const SplashPage(),
      binding: SplashBindings(),
    ),
    GetPage(
      name: HomePage.routePage,
      page: () => const HomePage(),
      binding: HomeBindings(),
    ),
    GetPage(
      name: LoginPage.routePage,
      page: () => const LoginPage(),
      binding: LoginBindings(),
    ),
  ];
}
