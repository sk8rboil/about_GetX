// ignore_for_file: invalid_use_of_protected_member

import 'package:get/get.dart';

class HomeController extends GetxController {
  int data = 4;

  RxInt value = 0.obs;
  RxString dataString = "Hello".obs;
  RxDouble dataDouble = 0.0.obs;
  RxBool dataBool = true.obs;
  RxList<int> dataList = [1, 2, 3].obs;
  var dataSets = RxSet<int>({1, 2, 3});
  RxMap<String, dynamic> myMap = <String, dynamic>{
    "id": 1,
    "name": "dsad",
    "age": 90,
  }.obs;

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
    /* if (dataBool.value == true) {
      dataBool.value = false;
    } else {
      dataBool.value = true;
    } */
    dataBool.toggle();
  }

  void adddataList() {
    dataList.add(data);
    data++;
  }

  void adddataSet() {
    dataSets.value = {99, 2, 3};
  }

  void changeName() {
    myMap['name'] = "Aloha";
  }
}
