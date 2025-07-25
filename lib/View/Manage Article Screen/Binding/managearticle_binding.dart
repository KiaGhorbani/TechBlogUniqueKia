import 'package:get/get.dart';
import 'package:techblog_unique/View/Manage%20Article%20Screen/Controller/managearticle_controller.dart';

class ManageArticleBinding implements Bindings {
  @override
  void dependencies() {

    Get.put(ManageArticleController());
  }
}
