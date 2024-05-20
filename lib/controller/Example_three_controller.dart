import 'package:get/get.dart';

class ExampleThreeController extends GetxController{

  RxBool Notification = false.obs;
  setNotification(bool value){
    Notification.value = value;
  }
}