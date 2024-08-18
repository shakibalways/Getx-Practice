



import 'dart:developer';

import 'package:flutter/cupertino.dart';
import 'package:get/get.dart';
import 'package:state_management_getx/controller/api/sign_in_service.dart';
import 'package:state_management_getx/views/pages/home/home.dart';

class SignInController extends GetxController{
  GlobalKey<FormState> formKey = GlobalKey<FormState>();
  TextEditingController emailController = TextEditingController();
  TextEditingController passwordController = TextEditingController();
  RxBool isLoading = false.obs;


  getSignIn()async{
    isLoading.value = true;
  bool status =  await SignInService.signInService();
  isLoading.value = false;
  if (status){
    log("Next Page");
    Get.to(()=>const Home());
    return;
  }
  }

}