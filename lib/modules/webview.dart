import 'package:flutter/material.dart';
import 'package:news_project/layout/news_layout.dart';
import 'package:webview_flutter/webview_flutter.dart';

class WebViewPage extends StatelessWidget {
  final String url;
  const WebViewPage({super.key, required this.url});

  @override
  Widget build(BuildContext context) {
    var controller = WebViewController()
      ..setJavaScriptMode(JavaScriptMode.disabled)
      ..loadRequest(Uri.parse(url));

    return Scaffold(
        appBar: AppBar(
          leading: GestureDetector(
            onTap: (){
              Navigator.pop(context,MaterialPageRoute(builder: (context) => NewsLayout(),));
            },
            child: Icon(
              Icons.arrow_back_ios_new_rounded,
              color: Colors.black,
            ),
          ),
        ),
        body: WebViewWidget(
          controller: controller,
        )
    );
  }
}
