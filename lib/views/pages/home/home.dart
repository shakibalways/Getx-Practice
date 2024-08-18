import 'package:flutter/material.dart';
import 'package:get/get.dart';

class Home extends StatelessWidget {
  const Home({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Home"),
        centerTitle: true,
      ),
      body: Center(
        child: Padding(
          padding: const EdgeInsets.all(10),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              GestureDetector(
                onTap: () {
                  Get.defaultDialog(
                    title: "Delete for chat",
                    titlePadding: const EdgeInsets.only(top: 20),
                    middleText: "Are you sure?",
                    textConfirm: "Yes",
                    confirmTextColor: Colors.white,
                    cancelTextColor: Colors.blue,
                    textCancel: "Cancel",
                    barrierDismissible: false,
                    contentPadding: const EdgeInsets.all(25),

                    onConfirm: (){
                      Get.back();
                    }

                  );
                },
                child: Container(
                  height: 50,
                  width: double.infinity,
                  decoration: BoxDecoration(
                      color: Colors.orange,
                      borderRadius: BorderRadius.circular(15)),
                  child: const Center(
                    child: Text(
                      "Tap",
                      style: TextStyle(
                          fontWeight: FontWeight.bold,
                          color: Colors.white,
                          fontSize: 25),
                    ),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
