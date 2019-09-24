import 'package:flutter/material.dart';
import 'dart:ui';

class Adapt {
  static Adapt instance = Adapt();
  static MediaQueryData mediaQuery = MediaQueryData.fromWindow(window);
  static double _width = mediaQuery.size.width;
  static double _height = mediaQuery.size.height;
  static double _topbarH = mediaQuery.padding.top;
  static double _botbarH = mediaQuery.padding.bottom;
  static double _pixelRatio = mediaQuery.devicePixelRatio;
  static double _textScaleFactor = mediaQuery.textScaleFactor;
  // 是否允许字体缩放
  static bool _allowFontScaling = false;
  // 设计图的尺寸
  static double _uiwidth = 375.0;
  static double _uiheight = 812.0;

  // 自定义初始化
  /// @param [allowFontScaling] 是否跟随系统进行字体缩放
  /// @param [uiwidth] 设计图的宽度px
  /// @param [uiheight] 设计图的高度px

  void init(BuildContext context) {
    mediaQuery = MediaQuery.of(context);
    _width = mediaQuery.size.width;
    _height = mediaQuery.size.height;
    _topbarH = mediaQuery.padding.top;
    _botbarH = mediaQuery.padding.bottom;
    _pixelRatio = mediaQuery.devicePixelRatio;
    _textScaleFactor = mediaQuery.textScaleFactor;
  }

  static Adapt getInstance() {
    return instance;
  }

  // 设置字体大小px
  static px(number) {
    return _allowFontScaling
        ? (number * scaleWidth) / _textScaleFactor
        : number * scaleWidth;
  }

  static onepx() {
    return 1 / _pixelRatio;
  }

  /// 实际的dp与UI设计px的比例
  /// The ratio of the actual dp to the design draft px
  static get scaleWidth => _width / _uiwidth;

  static get scaleHeight => _height / _uiheight;

  /// 当前设备宽度 px
  /// The vertical extent of this size. px
  static double get screenW => _width * _pixelRatio;

  /// 当前设备高度 px
  /// The vertical extent of this size. px
  static double get screenHeight => _height * _pixelRatio;

  static padTopH() {
    return _topbarH;
  }

  double setPx(number) {
    return _allowFontScaling
        ? (number * scaleWidth) / _textScaleFactor
        : number * scaleWidth;
  }

  double get getPadTopH => _topbarH;

// 底部安全区距离
  static padBotH() {
    return _botbarH;
  }

  static width(double width) => width * scaleWidth;

  static height(double height) => height * scaleWidth;
}
