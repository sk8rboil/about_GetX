// ignore_for_file: prefer_const_constructors

import 'package:basic_get/controllers/home_controller.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class MyStateManagement extends StatelessWidget {
  const MyStateManagement({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final counter = Get.put((HomeController()));
    return Scaffold(
      appBar: AppBar(),
      body: ListView(
        padding: EdgeInsets.all(8),
        children: <Widget>[
          obxInt(counter),
          obxString(counter),
          obxDouble(counter),
          obxBool(counter),
        ],
      ),
    );
  }

  Row obxBool(HomeController counter) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: <Widget>[
        Obx(() => Text(counter.dataBool.toString())),
        ElevatedButton(
          onPressed: counter.changdataBool,
          child: Text('change bool'),
        ),
      ],
    );
  }

  Row obxDouble(HomeController counter) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: <Widget>[
        Obx(() => Text(counter.dataDouble.toString())),
        Row(
          children: [
            ElevatedButton(
              onPressed: counter.incrementDouble,
              child: Text('+'),
            ),
            SizedBox(
              width: 10,
            ),
            ElevatedButton(
              onPressed: counter.decrementDouble,
              child: Text('-'),
            ),
          ],
        ),
      ],
    );
  }

  Row obxString(HomeController counter) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Obx(() => Text(counter.dataString.toString())),
        Row(
          children: [
            ElevatedButton(
              onPressed: counter.updatestring,
              child: Text('Update'),
            ),
            SizedBox(
              width: 10,
            ),
            ElevatedButton(
              onPressed: counter.resetstring,
              child: Text('Reset'),
            ),
          ],
        ),
      ],
    );
  }

  Row obxInt(HomeController counter) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: <Widget>[
        Obx(() => Text(counter.value.toString())),
        Row(
          children: [
            ElevatedButton(
              onPressed: counter.increment,
              child: Text('+'),
            ),
            SizedBox(
              width: 10,
            ),
            ElevatedButton(
              onPressed: counter.decrement,
              child: Text('-'),
            ),
          ],
        ),
      ],
    );
  }
}
