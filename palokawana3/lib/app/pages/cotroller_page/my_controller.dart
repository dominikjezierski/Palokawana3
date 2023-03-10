import 'package:flutter/material.dart';
import 'package:get/get.dart';

class MyController extends GetxController {
  var coffee = 0.obs;

  increment() {
    coffee.value++;
  }

  decrement() {
    if (coffee.value <= 0) {
      Get.snackbar(
        'Uwaga',
        'Ilość nie moze być mniejsza niz zero',
        icon: const Icon(Icons.alarm),
        barBlur: 20,
        isDismissible: true,
        backgroundColor: Colors.white,
        duration: const Duration(seconds: 3),
      );
    } else {
      coffee.value--;
    }
  }
}
