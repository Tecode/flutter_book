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
                      "http://admin.soscoon.com/uploadImages/20652f5799ddc5fd8aa7b83bc5ccba535813cb2c.jpg",
                ),
                CrownAvatar(
                  crownAvatarType: AvatarType.crownLarge,
                  color: AppColors.colorYellow,
                  avatarUrl:
                      "http://admin.soscoon.com/uploadImages/009207a2988235922d1871e6829c4694bad32e02.jpg",
                ),
                CrownAvatar(
                  crownAvatarType: AvatarType.crownSmall,
                  color: AppColors.colorBlue,
                  avatarUrl:
                      "http://admin.soscoon.com/uploadImages/861861fdbfa7652e90a73c4b161bca175cf8455e.jpg",
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
                                "http://admin.soscoon.com/uploadImages/3d9e2fecd82bc6d41bd50b917df4ef1e9f694ed6.jpg",
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
                                "http://admin.soscoon.com/uploadImages/cde46358174f2ba4130516e7d92297a9c3c67b72.jpg",
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
                                "http://admin.soscoon.com/uploadImages/ab43ee16e39c63ea5495f7205d7f6c914d9a3e57.jpg",
                          ))),
            ),
          ],
        ),
      ),
    );
  }
}
