// ignore_for_file: prefer_const_constructors, unused_local_variable

import 'package:basic_get/homepage.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class SecondScreen extends StatelessWidget {
  const SecondScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final Controller counter = Get.find();
    return Scaffold(
      appBar: AppBar(),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          // ignore: prefer_const_literals_to_create_immutables
          children: <Widget>[
            Text('${counter.count}'),
          ],
        ),
      ),
    );
  }
}
