<h1 align="center">Flutter book App</h1>

## 预览图

<p align="center">
    <img width="375" title="Flutter" src="assets/preview/login.png">
    <img width="375" title="Flutter" src="assets/preview/registered.png">
    <img width="375" title="Flutter" src="assets/preview/Screenshot_1562249221.png">
    <img width="375" title="Flutter" src="assets/preview/Find-2-min.png">
    <img width="375" title="Flutter" src="assets/preview/Find-2-min.png">
    <img width="375" title="Flutter" src="assets/preview/Home-min.png">
    <img width="375" title="Flutter" src="assets/preview/Success-min.png">
</p>

## 安卓IOS预览
<p align="center">
    <img width="375" title="安卓动画" src="assets/preview/android.gif">
    <img width="375" title="IOS动画" src="assets/preview/iphone.gif">
</p>

## 已经实现的功能

- 图片延时加载
- 大图缩放浏览
- 启动页
- 下拉刷新
- 路由跳转

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
  liquid_pull_to_refresh: ^1.1.0 // 下拉刷新
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

## `MacOS`

```bash
Flutter 1.5.4-hotfix.2 • channel stable • https://github.com/flutter/flutter.git
Framework • revision 7a4c33425d (8 weeks ago) • 2019-04-29 11:05:24 -0700
Engine • revision 52c7a1e849
Tools • Dart 2.3.0 (build 2.3.0-dev.0.5 a1668566e5)
```

## `Mobx`和`JSON`序列化构建

```dart
flutter packages pub run build_runner build
flutter packages pub run build_runner watch
flutter packages pub run build_runner watch --delete-conflicting-outputs
```

## 运行

Run `flutter packages pub run build_runner build`构建`mobx`，成功以后启动`mobx`监听

Run `flutter packages pub run build_runner watch`，在你修改了`store`以后会自动刷新。

## 错误信息

### 我使用安卓8.0解决了这个问题

```bash
Error connecting to the service protocol: HttpException: Connection closed before full header was received, uri = http://127.0.0.1:50626/DWu3_eY6i8s=/ws
```

