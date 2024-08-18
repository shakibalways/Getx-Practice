import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:state_management_getx/views/pages/category/category.dart';
import 'package:state_management_getx/views/pages/sign_in/auth/sign_in.dart';

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
                      // middleText: "Are you sure?",
                      // textConfirm: "Yes",
                      confirm: TextButton(
                          onPressed: () {
                            Get.back();
                          },
                          child: const Text("Yes")),
                      cancel: TextButton(
                          onPressed: () {
                            Get.back();
                          },
                          child: const Text("Cancel")),
                      content: const Column(
                        children: [
                          Text("ee"),
                          Text("ee"),
                          Text("ee"),
                          Text("ee"),
                          Text("ee"),
                          Text("ee"),
                        ],
                      ),
                      confirmTextColor: Colors.white,
                      cancelTextColor: Colors.blue,
                      // textCancel: "Cancel",
                      barrierDismissible: false,
                      contentPadding: const EdgeInsets.all(25),
                      onConfirm: () {
                        Get.back();
                      });
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
              const SizedBox(
                height: 50,
              ),
              Container(
                color: Colors.yellow,
                child: ListTile(
                  title: const Text("Light Theme"),
                  subtitle: const Text("Getx Bottom Sheet"),
                  onTap: () {
                    Get.bottomSheet(
                      Container(
                        decoration: const BoxDecoration(
                            color: Colors.orange,
                            borderRadius: BorderRadius.only(
                                topLeft: Radius.circular(20),
                                topRight: Radius.circular(20))),
                        child:  Column(
                          children: [
                            ListTile(
                              onTap: (){
                                Get.changeTheme(ThemeData.light());
                              },
                              leading: Icon(Icons.light_mode),
                              title: Text("Light Theme"),
                            ),
                            ListTile(
                              onTap: (){
                                Get.changeTheme(ThemeData.dark());
                              },
                              leading: Icon(Icons.dark_mode),
                              title: Text("Dark Theme"),
                            ),
                          ],
                        ),
                      ),
                    );
                  },
                ),
              ),
              SizedBox(height: 50,),
              TextButton(onPressed: (){
                Get.to(Category());
              }, child: Text("Throw a next page",style: TextStyle(
                fontWeight: FontWeight.bold,fontSize: 25,
              ),))
            ],
          ),
        ),
      ),
    );
  }
}
