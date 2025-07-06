import 'package:get/get.dart';
import 'package:techblog_unique/View/Register%20Screen/Controller/register_controller.dart';

class RegisterBinding implements Bindings {
  @override
  void dependencies() {

    Get.put(RegisterController());
  }
}
