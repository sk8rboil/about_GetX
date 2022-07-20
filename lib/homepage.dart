// ignore_for_file: prefer_const_constructors, sort_child_properties_last

import 'package:basic_get/screens/getx_workers.dart';
import 'package:basic_get/screens/second_screen.dart';
import 'package:basic_get/screens/state_management.dart';
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
            obxIncrement(counter),
            Wrap(
              alignment: WrapAlignment.spaceAround,
              spacing: 10,
              runSpacing: 20,
              children: [
                secondScreen(),
                getSnackbar(),
                getDialog(),
                getBottomsheet(),
                statemanagementScreen(),
                getWorkers(),
                getBindingBuilder(),
              ],
            ),
          ],
        ),
      ),
    );
  }

  ElevatedButton getBindingBuilder() {
    return ElevatedButton(
      onPressed: () {
        Get.toNamed('/get_route');
      },
      child: Text('binding builder'),
    );
  }

  ElevatedButton getWorkers() {
    return ElevatedButton(
      onPressed: () {
        Get.to(MyGetxWorkers());
      },
      child: Text('Getx Workers'),
    );
  }

  ElevatedButton statemanagementScreen() {
    return ElevatedButton(
      onPressed: () {
        Get.to(MyStateManagement());
      },
      child: Text('State managememt'),
    );
  }

  ElevatedButton getBottomsheet() {
    return ElevatedButton(
      onPressed: () {
        /* showModalBottomSheet(
                    context: context,
                    builder: (context) => Container(
                      height: 300,
                      decoration: BoxDecoration(
                        color: Colors.amber,
                      ),
                      child: ListView(
                        // ignore: prefer_const_literals_to_create_immutables
                        children: <Widget>[
                          ListTile(
                            title: Text('data'),
                          ),
                          ListTile(
                            title: Text('data'),
                          ),
                          ListTile(
                            title: Text('data'),
                          ),
                          ListTile(
                            title: Text('data'),
                          ),
                        ],
                      ),
                    ),
                  ); */
        Get.bottomSheet(
          Container(
            height: 300,
            decoration: BoxDecoration(
              color: Colors.amber,
            ),
            child: ListView(
              // ignore: prefer_const_literals_to_create_immutables
              children: <Widget>[
                ListTile(
                  title: Text('data'),
                ),
                ListTile(
                  title: Text('data'),
                ),
                ListTile(
                  title: Text('data'),
                ),
                ListTile(
                  title: Text('data'),
                ),
              ],
            ),
          ),
        );
      },
      child: Text('BottomSheet'),
    );
  }

  ElevatedButton getDialog() {
    return ElevatedButton(
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
    );
  }

  ElevatedButton getSnackbar() {
    return ElevatedButton(
      onPressed: () {
        /* ScaffoldMessenger.of(context).showSnackBar(
                SnackBar(
                  content: Text('Show Snackbar'),
                  action: SnackBarAction(label: 'label', onPressed: () {}),
                ),
              ); */
        Get.snackbar('title', 'message', snackPosition: SnackPosition.BOTTOM);
      },
      child: Text('snackbar'),
    );
  }

  ElevatedButton secondScreen() {
    return ElevatedButton(
      child: Text('second'),
      onPressed: () {
        Get.to(SecondScreen());
      },
    );
  }

  Column obxIncrement(Controller counter) {
    return Column(
      children: [
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
      ],
    );
  }
}
