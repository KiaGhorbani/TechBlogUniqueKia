

import 'package:file_picker/file_picker.dart';
import 'package:get/get.dart';
import 'package:techblog_unique/View/Post%20Article%20Screen/Controller/pickimage_controller.dart';

class FilePickerService{

  final PickImageController pickImageController = Get.put(PickImageController());

  Future imagePicker() async{

    FilePickerResult? result = await FilePicker.platform.pickFiles(type: FileType.image);
    pickImageController.pickedImage.value = result!.files.first;



  }









}