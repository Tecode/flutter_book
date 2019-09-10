import 'dart:async';
import 'package:flutter/material.dart';
import 'package:webview_flutter/webview_flutter.dart';
import 'package:flutter_book/helpers/constants.dart';

class AboutUs extends StatefulWidget {
  @override
  _AboutUsState createState() => _AboutUsState();
}

class _AboutUsState extends State<AboutUs> with SingleTickerProviderStateMixin {
  // webview
  final Completer<WebViewController> _controller =
      Completer<WebViewController>();
  // 加载进度条
  AnimationController _colorController;
  Animation<double> _animation;

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    _colorController = AnimationController(
        duration: const Duration(milliseconds: 4000), vsync: this);
    _animation = Tween(begin: 0.0, end: 1.0).animate(_colorController)
      ..addListener(() {
        setState(() {
          // the state that has changed here is the animation object’s value
        });
      });
      _colorController.forward();
  }

  JavascriptChannel _toasterJavascriptChannel(BuildContext context) {
    return JavascriptChannel(
        name: 'Toaster',
        onMessageReceived: (JavascriptMessage message) {
          Scaffold.of(context).showSnackBar(
            SnackBar(content: Text(message.message)),
          );
        });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("关于我们"),
        centerTitle: true,
        elevation: 0,
      ),
      body: Stack(
        children: <Widget>[
          WebView(
            initialUrl:
                'https://github.com/Tecode/flutter_book/blob/master/README.md',
            javascriptMode: JavascriptMode.unrestricted,
            onWebViewCreated: (WebViewController webViewController) {
              _controller.complete(webViewController);
            },
            javascriptChannels: <JavascriptChannel>[
              _toasterJavascriptChannel(context),
            ].toSet(),
            onPageFinished: (String url) {
              print('Page finished loading: $url');
              _colorController.fling();
            },
          ),
          Positioned(
            width: MediaQuery.of(context).size.width,
            top: 0.0,
            child: SizedBox(
              height: 2.0,
              child: LinearProgressIndicator(
                value: _animation.value ?? 0.0,
                backgroundColor: Colors.white,
                valueColor: AlwaysStoppedAnimation<Color>(Color(AppColors.mainColor)),
              ),
            ),
          )
        ],
      ),
    );
  }
}
