// ignore_for_file: prefer_const_constructors, sort_child_properties_last

import 'package:basic_get/screen/second_screen.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class Controller extends GetxController {
  var count = 0.obs;
  increment() => count++;
  decrement() => count--;
}

class MyHomepage extends StatelessWidget {
  const MyHomepage({Key? key, required String title}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final counter = Get.put(Controller());
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
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                ElevatedButton(child: Text('+'), onPressed: counter.increment),
                ElevatedButton(
                  onPressed: counter.decrement,
                  child: Text('-'),
                ),
              ],
            ),
            ElevatedButton(
              child: Text('second'),
              onPressed: () {
                Get.to(SecondScreen());
              },
            ),
            ElevatedButton(
              onPressed: () {
                /* ScaffoldMessenger.of(context).showSnackBar(
                  SnackBar(
                    content: Text('Show Snackbar'),
                    action: SnackBarAction(label: 'label', onPressed: () {}),
                  ),
                ); */
                Get.snackbar('title', 'message',
                    snackPosition: SnackPosition.BOTTOM);
              },
              child: Text('snackbar'),
            ),
            ElevatedButton(
              onPressed: () {
                Get.dialog(
                  AlertDialog(
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(20),
                    ),
                    title: Text('data'),
                    content: Text('data'),
                    actions: [
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        children: <Widget>[
                          ElevatedButton(
                            onPressed: () {},
                            child: Text('data'),
                          ),
                          ElevatedButton(
                            onPressed: () {},
                            child: Text('data'),
                          ),
                        ],
                      ),
                    ],
                  ),
                );
              },
              child: Text('Dialog'),
            ),
          ],
        ),
      ),
    );
  }
}
