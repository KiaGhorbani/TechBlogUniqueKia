import 'package:flutter/cupertino.dart';
import 'package:url_launcher/url_launcher.dart';

void myUrlLauncher(String url) async {
  Uri uri = Uri.parse(url);

  if (await canLaunchUrl(uri)) {
    await launchUrl(uri);
  } else {
    debugPrint("Failed To Launch URL: $url");
  }
}
