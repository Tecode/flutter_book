import 'package:flutter/material.dart';
import 'package:flutter_book/widgets/common/FullScreenWrapper.dart';
import 'package:flutter_book/helpers/constants.dart';
import 'package:flutter_svg/svg.dart';

class AvatarEdit extends StatefulWidget {
  final String avatarUrl;

  AvatarEdit({@required this.avatarUrl}) : assert(avatarUrl != null);

  @override
  _AvatarEditState createState() => _AvatarEditState(avatarUrl);
}

class _AvatarEditState extends State<AvatarEdit> {
  final String avatarUrl;

  _AvatarEditState(this.avatarUrl);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
          title: Text("我的资料"),
          centerTitle: true,
          elevation: 0,
          actions: <Widget>[
            IconButton(
              alignment: Alignment.centerLeft,
              onPressed: () {
                showModalBottomSheet(
                    context: context,
                    builder: (BuildContext context) {
                      return Column(
                        mainAxisSize: MainAxisSize.min, // 设置最小的弹出
                        children: <Widget>[
                          new ListTile(
                            title: new Text(
                              "拍照",
                              textAlign: TextAlign.center,
                            ),
                            onTap: () async {},
                          ),
                          new ListTile(
                            title:
                                new Text("选择照片", textAlign: TextAlign.center),
                            onTap: () async {},
                          ),
                          new ListTile(
                            title:
                                new Text("保存头像", textAlign: TextAlign.center),
                            onTap: () async {},
                          ),
                        ],
                      );
                    });
              },
              icon: SvgPicture.asset(
                'assets/icon/icon_setting.svg',
                width: Constants.appBarIconSize + 4.0,
                height: Constants.appBarIconSize + 4.0,
              ),
            )
          ]),
      body: FullScreenWrapper(
        backgroundDecoration: BoxDecoration(color: Color(AppColors.themeColor)),
        imageProvider: NetworkImage(avatarUrl),
      ),
    );
  }
}
