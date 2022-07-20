// ignore_for_file: prefer_const_constructors

import 'package:basic_get/controllers/home_controller.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class MyGetxWorkers extends StatelessWidget {
  const MyGetxWorkers({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final counter = Get.put(HomeController());

    return Scaffold(
      appBar: AppBar(),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          // ignore: prefer_const_literals_to_create_immutables
          children: [
            Text('Get Workers'),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: TextField(
                decoration: InputDecoration(
                  labelText: "data",
                  border: OutlineInputBorder(),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
