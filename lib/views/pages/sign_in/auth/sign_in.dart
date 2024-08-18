import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:state_management_getx/components/my_button.dart';
import 'package:state_management_getx/controller/getx/sign_in.dart';
import 'package:state_management_getx/views/pages/sign_in/widgets/my_email_field.dart';
import 'package:state_management_getx/views/pages/sign_in/widgets/my_pass_field.dart';

class SignIn extends StatelessWidget {
  const SignIn({super.key});

  @override
  Widget build(BuildContext context) {
    SignInController controller = Get.put(SignInController());
    return Scaffold(
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 25),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              const Text(
                "Login",
                style: TextStyle(
                  color: Colors.blue,
                  fontWeight: FontWeight.bold,
                  fontSize: 25,
                ),
              ),
              const SizedBox(
                height: 30,
              ),
              Form(
                key: controller.formKey,
                child: Column(
                  children: [
                    MyEmailField(controller: controller.emailController),
                    const SizedBox(
                      height: 30,
                    ),
                    MyPassField(controller: controller.passwordController),
                  ],
                ),
              ),
              const SizedBox(
                height: 30,
              ),
              Obx(
                () => controller.isLoading.isFalse
                    ? MyButton(
                        textName: "Login",
                        onTap: () {
                          if (!controller.formKey.currentState!.validate()) {
                            return;
                          }
                          controller.getSignIn();
                        })
                    : const Center(
                        child: CircularProgressIndicator(
                          backgroundColor: Colors.orange,
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
