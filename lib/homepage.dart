// ignore_for_file: prefer_const_constructors, sort_child_properties_last

import 'package:basic_get/screen/second_screen.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class Counter {
  var count = 0.obs;
  increment() => count++;
}

class MyHomepage extends StatelessWidget {
  const MyHomepage({Key? key, required String title}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final counter = Get.put(Counter());
    return Scaffold(
      appBar: AppBar(
        title: Text('Title'),
        centerTitle: true,
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          // ignore: prefer_const_literals_to_create_immutables
          children: <Widget>[
            Obx(() => Text(counter.count.toString())),
            ElevatedButton(
                child: Text('Click Me'), onPressed: counter.increment),
            ElevatedButton(
              child: Text('second'),
              onPressed: () {
                Get.to(SecondScreen());
              },
            ),
          ],
        ),
      ),
    );
  }
}
