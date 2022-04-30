import 'package:get/get.dart';
import 'package:flutter/material.dart';
import './splash_controller.dart';

class SplashPage extends GetView<SplashController> {
  const SplashPage({Key? key}) : super(key: key);

  static const routePage = '/';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: const Text('SplashPage'),
      ),
      body: Center(
        child: Obx(
          () => Text(
            controller.logged.toString(),
          ),
        ),
      ),
    );
  }
}
