import 'package:get/get.dart';
import 'package:techblog_unique/View/Article%20List%20Screen/Controller/articlelist_controller.dart';
import 'package:techblog_unique/View/Article%20Screen/Controller/articlescreen_controller.dart';

class ArticleBindings implements Bindings{
  @override
  void dependencies() {

    Get.put(ArticleListController());


    Get.lazyPut(()=>ArticleScreenController());



  }



}