import 'package:flutter/cupertino.dart';
import 'package:webview_flutter/webview_flutter.dart';

class WebProvider extends ChangeNotifier {
  WebViewController? webViewController;

  List Logos = [
    "assets/image/hotstar.jpg",
    "assets/image/netflix.jpg",
    "assets/image/amazon_prime.jpg",
    "assets/images/ZEE5.png",
    "assets/image/logo-dark.png",
    "assets/image/64931581.jpg",



  ];
  List name = [
    "HotStar",
    "Netflix",
    "Amazon Prime",
    "Zee5",
    "MX Player",
    "shemaroo ",

  ];

  List urls = [
    "https://www.hotstar.com/in",
    "https://www.netflix.com/in/",
    // "https://www.sonyliv.com/",
    "https://www.primevideo.com/",
    "https://www.zee5.com/myaccount/subscription?utm_source=GoogleSearch&utm_medium=Mark_CPA&utm_campaign=Essence-ZEE5-Brand-Rest-ZEE5-Ex-Performance&utm_term=zee5%20subscription&utm_content=Brand-Ex-NonCore-ZEE5&gclid=Cj0KCQjwnNyUBhCZARIsAI9AYlGkr6XCz_J_BrT9-GvoVUtp0VfBulTNHTdXXdHHIHBWAwLI0AWkmlwaAkuhEALw_wcB&gclsrc=aw.ds",
    "https://www.mxplayer.in/",
    "https://www.shemaroome.com/",
  ];

  void loadurl(int inde) {
    webViewController = WebViewController();
    webViewController!.loadRequest(
      Uri.parse("${urls[inde]}"),
    );
  }
}

