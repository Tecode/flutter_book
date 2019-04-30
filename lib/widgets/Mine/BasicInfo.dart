import 'package:flutter/material.dart';
import 'package:flutter_book/helpers/constants.dart';

class BasicInfo extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final String avatarUrl =
        'http://admin.soscoon.com/uploadImages/2bdcbd37d2fae6874cce4bba45d14573630925b1.jpeg';

    return Container(
      child: Column(
        children: <Widget>[
          Row(
            children: <Widget>[
              Container(
                width: 120.0,
                height: 120.0,
                decoration: BoxDecoration(
                    color: Color(AppColors.themeColorGray),
                    image: DecorationImage(image: NetworkImage(avatarUrl))),
              ),
              SizedBox(
                width: 16.0,
              ),
              Expanded(
                  child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: <Widget>[
                  Text(
                    'Marlene Anna',
                    style: TextStyle(
                        color: Color(AppColors.fontColor), fontSize: 22.0),
                  ),
                  
                  Text(
                    'San Diego, CA',
                    style: TextStyle(
                        color: Color(AppColors.fontColorGray), fontSize: 14.0),
                  ),
                  Container(
                    margin: EdgeInsets.only(top: 30.0),
                    padding:
                        EdgeInsets.symmetric(horizontal: 14.0, vertical: 7.0),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.end,
                      children: <Widget>[
                        Container(
                          padding: EdgeInsets.symmetric(
                              vertical: 7.0, horizontal: 14.0),
                          color: Colors.red,
                          child: IconButton(
                            icon: Icon(Icons.toll),
                            onPressed: (){},
                          ),
                        )
                      ],
                    ),
                  ),
                ],
              ))
            ],
          ),
        ],
      ),
    );
  }
}
