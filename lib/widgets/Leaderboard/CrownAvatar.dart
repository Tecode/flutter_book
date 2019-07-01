import 'package:flutter/material.dart';
import 'package:flutter_book/helpers/constants.dart';

class CrownAvatar extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      child: Column(
        children: <Widget>[
          Stack(
            children: <Widget>[
              ClipRRect(
                borderRadius: BorderRadius.circular(100.0),
                child: Image.network(
                  "http://admin.soscoon.com/uploadImages/0136afa3b04e2d754feaed525fa02f474dd08aa0.jpg",
                  width: 75.0,
                  height: 75.0,
                  fit: BoxFit.cover,
                ),
              ),
              Text("35666")
            ],
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              Container(
                width: 18.0,
                height: 18.0,
                child: Align(
                  alignment: Alignment.center,
                  child: Text(
                    "2",
                    style: TextStyle(
                        color: Color(AppColors.fontColor), fontSize: 14.0),
                  ),
                ),
                decoration: BoxDecoration(
                    color: Color(AppColors.colorRed),
                    borderRadius: BorderRadius.circular(20.0)),
              ),
              SizedBox(
                width: 4.0,
              ),
              Text(
                "Charlene",
                style: TextStyle(
                    color: Color(AppColors.fontColor), fontSize: 16.0),
              )
            ],
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              Container(
                child: Text(
                  "4688",
                  style: TextStyle(
                      color: Color(AppColors.fontColorGray), fontSize: 16.0),
                ),
              ),
              SizedBox(
                width: 4.0,
              ),
              Text(
                "关注者",
                style: TextStyle(
                    color: Color(AppColors.fontColorGray), fontSize: 16.0),
              )
            ],
          )
        ],
      ),
    );
  }
}
