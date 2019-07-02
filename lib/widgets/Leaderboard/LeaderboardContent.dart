import 'package:flutter/material.dart';
import 'package:flutter_book/widgets/Leaderboard/CrownAvatar.dart';
import 'package:flutter_book/helpers/constants.dart';
import 'package:flutter_book/widgets/common/CommonTitle.dart';

class LeaderboardContent extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Column(
      children: <Widget>[
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: List.generate(
              3,
              (int index) => CrownAvatar(
                    crownAvatarType: AvatarType.normal,
                    color: AppColors.colorRed,
                  )),
        ),
        CommonTitle(title: "热门排行"),
        CommonTitle(title: "最新作者"),
        CommonTitle(title: "其他作者"),
      ],
    );
  }
}
