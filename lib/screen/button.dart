import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:jiitak/screen/homescreen.dart';
import 'package:jiitak/screen/second.dart';
import 'package:jiitak/screen/thirdpage.dart';



class ButtonPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
       backgroundColor: Color.fromARGB(255, 100, 4, 4),
      
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            ElevatedButton(
              onPressed: () {
                 Get.to(HomeScreen());
                Get.snackbar('Button 1', 'You pressed Button 1',
                    snackPosition: SnackPosition.BOTTOM);
              },
              child: Text('Button 1'),
            ),
            SizedBox(height: 16),
            ElevatedButton(
              onPressed: () {
                Get.to(SecondPageW());
                Get.snackbar('Button 2', 'You pressed Button 2',
                    snackPosition: SnackPosition.BOTTOM);
              },
              child: Text('Button 2'),
            ),
            SizedBox(height: 16),
            ElevatedButton(
              onPressed: () {
                Get.to(ThirdPageWidget());
                Get.snackbar('Button 3', 'You pressed Button 3',
                    snackPosition: SnackPosition.BOTTOM);
              },
              child: Text('Button 3'),
            ),
          ],
        ),
      ),
    );
  }
}
