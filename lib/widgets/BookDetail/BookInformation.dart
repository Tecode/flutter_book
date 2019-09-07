import 'package:flutter/material.dart';
import 'package:flutter_book/helpers/constants.dart';
import 'package:flutter_book/helpers/Adapt.dart';
import 'package:flutter_svg/flutter_svg.dart';

class BookInfomation extends StatelessWidget {
  final List<Map<String, dynamic>> _iconList = [
    {"key": "喜欢", "icon": "assets/icon/icon_like.svg"},
    {"key": "分享", "icon": "assets/icon/icon_share.svg"},
    {"key": "书架", "icon": "assets/icon/icon_bookshelf.svg"}
  ];

  @override
  Widget build(BuildContext context) {
    return Column(
      children: <Widget>[
        Container(
          margin: EdgeInsets.only(left: Constants.pageMargin, top: 32.0),
          child: Row(
            children: <Widget>[
              Container(
                width: Adapt.width(108.0),
                height: Adapt.height(150.0),
                margin: EdgeInsets.only(right: Adapt.width(18.0)),
                child: ClipRRect(
                  borderRadius: BorderRadius.circular(4.0),
                  child: FadeInImage.assetNetwork(
                    image:
                        "http://admin.soscoon.com/uploadImages/763229ced887b7e1e61a20aa1b14b42425c01e01.png",
                    placeholder: 'assets/images/image_none.gif',
                    fit: BoxFit.cover,
                  ),
                ),
              ),
              Expanded(
                child: Container(
                  height: Adapt.height(156.0),
                  padding: const EdgeInsets.only(
                      right: Constants.pageMargin, top: 8.0, bottom: 8.0),
                  child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      mainAxisAlignment: MainAxisAlignment.end,
                      children: <Widget>[
                        Text(
                          "活着",
                          style: TextStyle(
                              color: const Color(AppColors.fontColor),
                              fontSize: Adapt.px(24.0),
                              height: 1.4),
                        ),
                        Text(
                          "余华 著",
                          style: TextStyle(
                              color: const Color(AppColors.fontColor),
                              fontSize: Adapt.px(14.0),
                              height: 1.3),
                        ),
                        Text(
                          "畅销百万册，中国作家之一，他的作品成了当代中国的典范。世界华文“冰心文学奖”，入选香港《亚洲周刊》评选的“20世纪中文小说百年百强”等",
                          maxLines: 2,
                          overflow: TextOverflow.ellipsis,
                          style: TextStyle(
                              color: const Color(AppColors.fontColorGray),
                              fontSize: Adapt.px(12.0)),
                        ),
                        Padding(
                          padding: const EdgeInsets.only(top: 8.0),
                          child: Row(
                            children: <Widget>[
                              Container(
                                child: Row(
                                  children: List.generate(
                                      5,
                                      (int index) => GestureDetector(
                                            child: Padding(
                                              padding:
                                                  EdgeInsets.only(right: 2.0),
                                              child: SvgPicture.asset(
                                                "assets/icon/icon_star.svg",
                                                width: Adapt.width(15.0),
                                                height: Adapt.height(15.0),
                                              ),
                                            ),
                                          )),
                                ),
                              ),
                              Padding(
                                padding: const EdgeInsets.only(right: 12.0),
                                child: Text(
                                  "5.0",
                                  style: TextStyle(
                                      fontSize: Adapt.px(20.0),
                                      fontWeight: FontWeight.bold,
                                      color: const Color(
                                          AppColors.fontColorYellow)),
                                ),
                              )
                            ],
                          ),
                        )
                      ]),
                ),
              ),
            ],
          ),
        ),
        Container(
          margin: EdgeInsets.only(
              top: Adapt.height(24.0), bottom: Adapt.height(24.0), left: Constants.pageMargin),
          decoration: BoxDecoration(
              border: Border(
            top: BorderSide(color: Color(AppColors.borderColor), width: 1.0),
            bottom: BorderSide(color: Color(AppColors.borderColor), width: 1.0),
          )),
          child: Row(
            children: _iconList
                .map((Map<String, dynamic> data) => Expanded(
                    child: GestureDetector(
                        onTap: () {
                          Scaffold.of(context).showSnackBar(SnackBar(
                            content: new Text(
                              "完善中，敬请期待...",
                              textAlign: TextAlign.center,
                            ),
                          ));
                        },
                        child: Padding(
                          padding: const EdgeInsets.symmetric(vertical: 22.0),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: <Widget>[
                              Padding(
                                padding: const EdgeInsets.only(right: 8.0),
                                child: SvgPicture.asset(
                                  data["icon"],
                                  width: Adapt.width(19.0),
                                ),
                              ),
                              Text(
                                data["key"],
                                style: TextStyle(
                                    color: Color(AppColors.fontColor),
                                    fontSize: Adapt.px(15.0)),
                              ),
                            ],
                          ),
                        ))))
                .toList(),
          ),
        ),
        Container(
          margin: EdgeInsets.only(
              left: Constants.pageMargin, right: 10.0, bottom: 24.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: <Widget>[
              Padding(
                padding: const EdgeInsets.only(bottom: 16.0),
                child: Text(
                  "详情",
                  textAlign: TextAlign.start,
                  style: TextStyle(
                      color: Color(AppColors.fontColor),
                      fontSize: Adapt.px(18.0),
                      fontWeight: FontWeight.w500),
                ),
              ),
              Text(
                  "《活着（新版）》讲述了农村人福贵悲惨的人生遭遇。福贵本是个阔少爷，可他嗜赌如命，终于赌光了家业，一贫如洗。他的父亲被他活活气死，母亲则在穷困中患了重病，福贵前去求药，却在途中被国民党抓去当壮丁。经过几番波折回到家里，才知道母亲早已去世，妻子家珍含辛茹苦地养大两个儿女。���后更加悲惨的命运一次又一次降临到福贵身上，他的妻子、儿女和孙子相继死去，最后只剩福贵和一头老牛相依为命，但老人依旧活着，仿佛比往日更加洒脱与坚强。\n《余华作品：活着》荣获意大利格林扎纳·卡佛文学奖高奖项（1998年）、台湾《中国时报》10本好书奖（1994年）、香港“博益”15本好书奖（1994年）、第三届世界华文“冰心文学奖”（2002年），入选香港《亚洲周刊》评选的“20世纪中文小说百年百强”、中国百位批评家和文学编辑评选的“20世纪90年代*有影响的10部作品”。",
                  style: TextStyle(
                      height: 1.2,
                      color: Color(AppColors.fontColorGray),
                      fontSize: Adapt.px(15.0)))
            ],
          ),
        )
      ],
    );
  }
}
