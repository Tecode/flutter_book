import 'package:flutter/material.dart';
import 'package:flutter_book/widgets/Leaderboard/CrownAvatar.dart';
import 'package:flutter_book/helpers/constants.dart';
import 'package:flutter_book/widgets/common/CommonTitle.dart';

class LeaderboardContent extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.symmetric(horizontal: Constants.pageMargin),
      child: SingleChildScrollView(
        child: Column(
          children: <Widget>[
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: <Widget>[
                CrownAvatar(
                  crownAvatarType: AvatarType.crownSmall,
                  color: AppColors.colorRed,
                  avatarUrl:
                      "http://admin.soscoon.com/uploadImages/0136afa3b04e2d754feaed525fa02f474dd08aa0.jpg",
                ),
                CrownAvatar(
                  crownAvatarType: AvatarType.crownLarge,
                  color: AppColors.colorYellow,
                  avatarUrl:
                      "http://admin.soscoon.com/uploadImages/0136afa3b04e2d754feaed525fa02f474dd08aa0.jpg",
                ),
                CrownAvatar(
                  crownAvatarType: AvatarType.crownSmall,
                  color: AppColors.colorBlue,
                  avatarUrl:
                      "http://admin.soscoon.com/uploadImages/0136afa3b04e2d754feaed525fa02f474dd08aa0.jpg",
                )
              ],
            ),
            CommonTitle(title: "热门排行"),
            Container(
              margin: EdgeInsets.symmetric(vertical: 24.0),
              height: 140.0,
              child: ListView(
                  scrollDirection: Axis.horizontal,
                  children: List.generate(
                      10,
                      (_) => CrownAvatar(
                            crownAvatarType: AvatarType.normal,
                            color: AppColors.colorYellow,
                            follow: true,
                            avatarUrl:
                                "http://admin.soscoon.com/uploadImages/0136afa3b04e2d754feaed525fa02f474dd08aa0.jpg",
                          ))),
            ),
            CommonTitle(title: "最新作者"),
            Container(
              margin: EdgeInsets.symmetric(vertical: 24.0),
              height: 140.0,
              child: ListView(
                  scrollDirection: Axis.horizontal,
                  children: List.generate(
                      10,
                      (_) => CrownAvatar(
                            crownAvatarType: AvatarType.normal,
                            color: AppColors.colorYellow,
                            follow: true,
                            avatarUrl:
                                "http://admin.soscoon.com/uploadImages/0136afa3b04e2d754feaed525fa02f474dd08aa0.jpg",
                          ))),
            ),
            CommonTitle(title: "其他作者"),
            Container(
              margin: EdgeInsets.symmetric(vertical: 24.0),
              height: 140.0,
              child: ListView(
                  scrollDirection: Axis.horizontal,
                  children: List.generate(
                      10,
                      (_) => CrownAvatar(
                            crownAvatarType: AvatarType.normal,
                            color: AppColors.colorYellow,
                            avatarUrl:
                                "http://admin.soscoon.com/uploadImages/0136afa3b04e2d754feaed525fa02f474dd08aa0.jpg",
                          ))),
            ),
          ],
        ),
      ),
    );
  }
}
