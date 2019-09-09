import 'package:flutter/material.dart';
import 'package:flutter_book/helpers/Adapt.dart';
import 'package:flutter_book/helpers/constants.dart';
import 'package:flutter_book/widgets/common/CommonTitle.dart';

class History extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    List<String> _historyData = [
      'React实战',
      '白露',
      '京东',
      '成都双流集散中心2',
      'Angular Material',
      '顺丰快递单号查询',
      '基本初等函数的导数公式',
      '简书'
    ];
    return Column(
      children: <Widget>[
        CommonTitle(
          title: '搜索历史',
        ),
        SizedBox(
          height: Adapt.height(16.0),
        ),
        SizedBox(
          width: double.infinity,
          child: Wrap(
            children: _historyData
                .take(5)
                .map((String value) => Container(
                      padding: EdgeInsets.symmetric(
                          horizontal: Adapt.width(
                            16.0,
                          ),
                          vertical: Adapt.width(6.0)),
                      margin: EdgeInsets.only(
                          bottom: Adapt.height(10.0), right: Adapt.width(10.0)),
                      decoration: BoxDecoration(
                        color: Color(AppColors.borderColor),
                        borderRadius: BorderRadius.circular(Adapt.px(20.0)),
                      ),
                      child: Text(
                        value,
                        style: TextStyle(
                            fontSize: Adapt.px(12),
                            color: Color(AppColors.fontColor)),
                      ),
                    ))
                .toList(),
          ),
        )
      ],
    );
  }
}
