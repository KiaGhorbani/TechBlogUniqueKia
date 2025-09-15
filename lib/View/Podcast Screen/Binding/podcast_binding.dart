import 'package:get/get.dart';
import 'package:techblog_unique/View/Podcast%20Screen/Controller/podcastscreen_controller.dart';

class PodcastBindings implements Bindings{
  @override
  void dependencies() {



    Get.lazyPut(()=>PodcastScreenController());



  }



}