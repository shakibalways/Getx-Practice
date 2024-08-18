import 'package:flutter/material.dart';
import 'package:get/get.dart';

class Category extends StatefulWidget {
  const Category({super.key});

  @override
  State<Category> createState() => _CategoryState();
}

class _CategoryState extends State<Category> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.orange,
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            TextButton(onPressed: () {
              Get.back();
            }, child: Text("Category Page In Show",style: TextStyle(fontSize: 30),))
          ],
        ),
      ),
    );
  }
}
