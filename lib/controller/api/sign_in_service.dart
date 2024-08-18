import 'dart:developer';

class SignInService {
  static Future<bool> signInService() async {
    try {
      log("=======555555======");
     await Future.delayed(const Duration(milliseconds: 400));
      return true;
    } catch (e) {
      log(
        "Error: ${e.toString()}",
      );
    }
    return false;
  }
}
