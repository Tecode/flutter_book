import 'dart:async';
import 'package:flutter/material.dart';
import 'package:flutter_book/helpers/Adapt.dart';
import 'package:flutter_svg/svg.dart';
import 'package:webview_flutter/webview_flutter.dart';
import 'package:flutter_book/helpers/constants.dart';

class AboutUs extends StatefulWidget {
  @override
  _AboutUsState createState() => _AboutUsState();
}

class _AboutUsState extends State<AboutUs> with SingleTickerProviderStateMixin {
  bool loading = true;
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
        duration: const Duration(milliseconds: 8000), vsync: this);
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
        leading: SizedBox(
          width: Adapt.width(18.0),
          height: Adapt.height(18.0),
          child: IconButton(
            icon: SvgPicture.asset(
              'assets/icon/icon_close.svg',
              width: Adapt.width(18.0),
              height: Adapt.height(18.0),
              color: Colors.white,
            ),
            onPressed: () {
              Navigator.pop(context);
            },
          ),
        ),
      ),
      body: Stack(
        children: <Widget>[
          WebView(
            initialUrl: 'https://www.soscoon.com/',
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
              Future.delayed(Duration(milliseconds: 200), () {
                this.setState(() {
                  loading = false;
                });
              });
            },
          ),
          Positioned(
            width: MediaQuery.of(context).size.width,
            top: 0.0,
            child: loading
                ? SizedBox(
                    height: 2.0,
                    child: LinearProgressIndicator(
                      value: _animation.value ?? 0.0,
                      backgroundColor: Colors.white,
                      valueColor: AlwaysStoppedAnimation<Color>(
                          Color(AppColors.mainColor)),
                    ),
                  )
                : SizedBox(),
          )
        ],
      ),
    );
  }
}
