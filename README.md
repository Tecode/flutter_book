<h1 align="center">Flutter book App</h1>

## 预览图

<p align="center">
    <img width="375" title="Flutter" src="assets/preview/Find-2-min.png">
    <img width="375" title="Flutter" src="assets/preview/Home-min.png">
    <img width="375" title="Flutter" src="assets/preview/Success-min.png">
</p>

## 安卓IOS预览
<p align="center">
    <img width="375" title="安卓动画" src="assets/preview/android.gif">
    <img width="375" title="IOS动画" src="assets/preview/iphone.gif">
</p>

## 功能

- #### 图片延时加载
- #### 大图缩放浏览

## 依赖库

```dart
environment:
  sdk: ">=2.1.0 <3.0.0"
dependencies:
  flutter:
    sdk: flutter
  mobx:
  flutter_mobx: // Mobx
  cupertino_icons: ^0.1.2
  flutter_svg: ">=0.12.4" // 处理SVG图片
  carousel_slider: ^1.3.0 // 轮播图
  fluro: "^1.4.0" // 路由
  provider: ^2.0.1 // 用于包裹mobx
  dio: 2.1.0 // 请求库
  multi_image_picker 4.3.1 // 多选图片

dev_dependencies:
  flutter_test:
    sdk: flutter
  build_runner: ^1.3.1 //Mobx依赖
  mobx_codegen: // Mobx依赖
```

## `Flutter`版本

### `Ubuntu18`

```bash
Flutter 1.5.9-pre.223 • channel master • https://github.com/flutter/flutter.git
Framework • revision b76a1e8312 (11 days ago) • 2019-05-13 09:06:30 +0100
Engine • revision 816d3fc586
Tools • Dart 2.3.1 (build 2.3.1-dev.0.0 a0290f823c)
```

### `Windows10`

```bash
Flutter 1.5.4 • channel stable • https://github.com/flutter/flutter.git
Framework • revision b593f5167b (5 weeks ago) • 2019-04-22 07:51:33 -0700
Engine • revision ca31a7c57b
Tools • Dart 2.3.0 (build 2.3.0-dev.0.1 cf4444b803)
```

## Mobx

```dart
flutter packages pub run build_runner build
flutter packages pub run build_runner watch
flutter packages pub run build_runner watch --delete-conflicting-outputs
```

## 运行

Run `flutter packages pub run build_runner build`构建`mobx`，成功以后启动`mobx`监听

Run `flutter packages pub run build_runner watch`，在你修改了`store`以后会自动刷新。

## 开始

This project is a starting point for a Flutter application.

A few resources to get you started if this is your first Flutter project:

- [Lab: Write your first Flutter app](https://flutter.io/docs/get-started/codelab)
- [Cookbook: Useful Flutter samples](https://flutter.io/docs/cookbook)

For help getting started with Flutter, view our 
[online documentation](https://flutter.io/docs), which offers tutorials, 
samples, guidance on mobile development, and a full API reference.
