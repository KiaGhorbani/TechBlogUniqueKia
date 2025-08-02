import 'package:get/get.dart';
import 'package:techblog_unique/View/Post%20Article%20Screen/Controller/postarticle_controller.dart';


class PostArticleBinding implements Bindings {
  @override
  void dependencies() {

    Get.lazyPut(()=>PostArticleController);
  }
}
