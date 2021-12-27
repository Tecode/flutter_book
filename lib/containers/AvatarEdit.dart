// @dart=2.9
import 'dart:async';
import 'dart:io';
import 'package:flutter/material.dart';
import 'package:flutter_book/helpers/Adapt.dart';
import 'package:flutter_book/widgets/common/FullScreenWrapper.dart';
import 'package:flutter_book/helpers/constants.dart';
import 'package:flutter_svg/svg.dart';
import 'package:image_cropper/image_cropper.dart';
import 'package:image_picker/image_picker.dart';

class AvatarEdit extends StatefulWidget {
  final String avatarUrl;

  AvatarEdit({@required this.avatarUrl}) : assert(avatarUrl != null);

  @override
  _AvatarEditState createState() => _AvatarEditState(avatarUrl);
}

class _AvatarEditState extends State<AvatarEdit> {
  final String avatarUrl;
  File imageFile;
  final List<Map<String, dynamic>> _actionListData = [
    {'title': '拍照', 'value': 'takePhoto'},
    {'title': '相册', 'value': 'ablum'},
    {'title': '保存图片', 'value': 'saveImage'},
  ];
  String _activeKey;
  _AvatarEditState(this.avatarUrl);

  // 选择图片
  Future<Null> _pickImage() async {
    imageFile = await ImagePicker.pickImage(source: ImageSource.gallery);
    if (imageFile != null) {}
  }

  Future<Null> _takePhoto() async {
    imageFile = await ImagePicker.pickImage(source: ImageSource.camera);
    if (imageFile != null) {}
  }

  Future<Null> _cropImage() async {
    File croppedFile = await ImageCropper.cropImage(
      sourcePath: imageFile.path,
//      toolbarTitle: 'Cropper',
//      toolbarColor: Colors.blue,
//      toolbarWidgetColor: Colors.white,
    );
    if (croppedFile != null) {
      imageFile = croppedFile;
    }
  }

  // 弹窗选项点击事件
  void _handleClick(String key) {
    print(key);
    switch (key) {
      case 'takePhoto':
        _takePhoto().then((_) {
          _cropImage();
        });
        break;
      case 'ablum':
        _pickImage().then((_) {
          _cropImage();
        });
        break;
      case 'saveImage':
        break;
      default:
    }
    Navigator.pop(context);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("头像"),
        centerTitle: true,
        elevation: 0,
        actions: <Widget>[
          IconButton(
            alignment: Alignment.centerLeft,
            onPressed: () {
              showModalBottomSheet(
                  context: context,
                  backgroundColor: Colors.transparent,
                  builder: (BuildContext context) {
                    return ClipRRect(
                      borderRadius: BorderRadius.only(
                        topLeft: Radius.circular(20),
                        topRight: Radius.circular(20),
                      ),
                      child: Container(
                        decoration: BoxDecoration(
                          color: Colors.white,
                        ),
                        child: StatefulBuilder(
                          builder:
                              (BuildContext context, StateSetter setState) =>
                                  Column(
                            mainAxisSize: MainAxisSize.min, // 设置最小的弹出
                            children: <Widget>[
                              Column(
                                  children: _actionListData
                                      .map((Map<String, dynamic> data) =>
                                          GestureDetector(
                                            onTapUp: (TapUpDetails details) {
                                              setState(() {
                                                _activeKey = null;
                                              });
                                            },
                                            onTap: () =>
                                                _handleClick(data['value']),
                                            onTapDown: (TapDownDetails detail) {
                                              setState(() {
                                                _activeKey = data['value'];
                                              });
                                            },
                                            onTapCancel: () {
                                              setState(() {
                                                _activeKey = null;
                                              });
                                            },
                                            child: Container(
                                                width: double.infinity,
                                                padding: EdgeInsets.symmetric(
                                                    vertical:
                                                        Adapt.height(16.0)),
                                                child: Text(
                                                  data['title'],
                                                  textAlign: TextAlign.center,
                                                  style: TextStyle(
                                                      fontSize: Adapt.px(16)),
                                                ),
                                                color:
                                                    _activeKey == data['value']
                                                        ? Color(0xfffafafa)
                                                        : Colors.white),
                                          ))
                                      .toList()),
                              ListTile(
                                title: Text(
                                  '取消',
                                  textAlign: TextAlign.center,
                                ),
                                onTap: () {
                                  Navigator.pop(context);
                                },
                              ),
                              SizedBox(
                                height: Adapt.height(20.0),
                              ),
                            ],
                          ),
                        ),
                      ),
                    );
                  });
            },
            icon: SvgPicture.asset(
              'assets/icon/icon_setting.svg',
              width: Adapt.width(Constants.appBarIconSize + 4.0),
              height: Adapt.height(Constants.appBarIconSize + 4.0),
            ),
          ),
        ],
      ),
      body: FullScreenWrapper(
        backgroundDecoration: BoxDecoration(color: Color(AppColors.themeColor)),
        imageProvider: NetworkImage(avatarUrl),
      ),
    );
  }
}
