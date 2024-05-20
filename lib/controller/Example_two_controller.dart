import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get/get_rx/get_rx.dart';

class ExampleTwoController extends GetxController{

  RxDouble Opacity = 0.4.obs;
  setopacity(double value){
    Opacity.value = value;
  }
}