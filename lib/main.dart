// ignore_for_file: prefer_const_constructors

import 'package:basic_get/homepage.dart';
import 'package:basic_get/screens/binding_builder.dart';
import 'package:basic_get/screens/state_management.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.indigo,
      ),
      home: const MyHomepage(title: 'Flutter Demo Home Page'),
      routes: {
        '/state_management': (context) => MyStateManagement(),
      },
      getPages: [
        GetPage(name: "/get_route", page: () => MyBindingBuilder()),
      ],
    );
  }
}
