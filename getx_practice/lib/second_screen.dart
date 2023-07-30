import 'package:get/get.dart';

class SecondScreenController extends GetxController {
  RxBool notification = false.obs;

  setNotification(bool value) {
    notification.value = value;
  }
}
