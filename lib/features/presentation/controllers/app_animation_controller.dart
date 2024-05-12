import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get/get_rx/get_rx.dart';

class AppAnimationController extends GetxController {
  // Pozitsiya qiymati
  RxDouble position = RxDouble(-350);

  // Pozitsiyani yangilash funksiyasi
  void updatePosition(double newPosition) {
    position.value = newPosition;
    update();
  }
  @override
  void onInit() {
    // TODO: implement onInit
    super.onInit();
  }
}