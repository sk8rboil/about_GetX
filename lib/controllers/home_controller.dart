import 'package:get/get.dart';

class HomeController extends GetxController {
  RxInt value = 0.obs;
  RxString dataString = "Hello".obs;
  RxDouble dataDouble = 0.0.obs;
  RxBool dataBool = true.obs;

  void increment() => value++;
  void decrement() => value--;
  void updatestring() {
    dataString.value = "Update Success!";
  }

  void resetstring() {
    dataString.value = "Hello";
  }

  void incrementDouble() => dataDouble.value++;
  void decrementDouble() => dataDouble.value--;

  void changdataBool() {
    if (dataBool.value == true) {
      dataBool.value = false;
    } else {
      dataBool.value = true;
    }
  }
}
