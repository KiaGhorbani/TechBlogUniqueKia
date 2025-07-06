import 'dart:developer';

import 'package:flutter/cupertino.dart';
import 'package:get/get.dart';
import 'package:get_storage/get_storage.dart';
import 'package:techblog_unique/Constants/my_api.dart';
import 'package:techblog_unique/Constants/storage.dart';
import 'package:techblog_unique/Services/dio_service.dart';
import 'package:techblog_unique/View/Register%20Screen/register_screen.dart';
import 'package:techblog_unique/View/main_screen.dart';

class RegisterController extends GetxController {
  TextEditingController emailTextController = TextEditingController();
  TextEditingController otpTextController = TextEditingController();
  TextEditingController nameTextController = TextEditingController();
  GetStorage box = GetStorage();
  String email = "Kiarashghorbani@gmail.com";
  String userId = "";

  void register() async {
    Map<String, dynamic> dataMap = {
      'email': emailTextController.text,
      'command': 'register'
    };

    dynamic response = await MyDioService().post(dataMap, MyApi.register);
    email = emailTextController.text;
    userId = response.data['user_id'];

    log(response);
  }

  void verifyOtp() async {
    Map<String, dynamic> dataMap = {
      'email': email,
      'user_id': userId,
      'code': otpTextController.text,
      'command': 'verify'
    };

    dynamic response = await MyDioService().post(dataMap, MyApi.register);
    log(response.data['response']);
    String responseStatus = response.data['response'];

    switch (responseStatus) {
      case 'verified':
        box.write(MyStorage().token, response.data['token']);
        box.write(MyStorage().userId, response.data['user_id']);

        log("Kia Message Token: ${box.read(MyStorage().token)}");
        log("Kia Message User ID: ${box.read(MyStorage().userId)}");

        Get.offAll(() => MainScreen());
        break;

      case 'incorrect_code ':
        Get.snackbar('Error', "کد فعالسازی غلط است");
        break;
      case 'expired':
        Get.snackbar('Error', "کد فعالسازی منقضی شده است");
        break;
    }
  }

  void toggleLogin() {
    if (box.read(MyStorage().token) == null) {
      Get.to(() => RegisterScreen());
    } else {
      log("Player Registered");
    }
  }
}

