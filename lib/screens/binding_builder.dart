// ignore_for_file: file_names, prefer_const_constructors

import 'package:basic_get/controllers/home_controller.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class MyBindingBuilder extends StatelessWidget {
  const MyBindingBuilder({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final counter = Get.put(HomeController());
    return Scaffold(
      appBar: AppBar(),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          // ignore: prefer_const_literals_to_create_immutables
          children: <Widget>[
            Obx(() => Text(counter.value.toString())),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                ElevatedButton(
                  onPressed: counter.increment,
                  child: Text('+'),
                ),
                ElevatedButton(
                  onPressed: counter.decrement,
                  child: Text('-'),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
