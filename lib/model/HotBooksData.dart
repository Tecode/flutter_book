import 'package:flutter/material.dart';

class HotBooksModel {
  final String title;
  final String imageUrl;
  final String author;

  HotBooksModel(
      {@required this.title, @required this.imageUrl, @required this.author})
      : assert(title != null),
        assert(imageUrl != null),
        assert(author != null);
}

class HotBooksData {
  final List<HotBooksModel> hotBooksData = [
    HotBooksModel(
        title: 'Objective-C 2.0：编写高质量iOS与OS X代码的52个有效方法',
        imageUrl: 'http://admin.soscoon.com/uploadImages/763229ced887b7e1e61a20aa1b14b42425c01e01.png',
        author: '马特·加洛韦, 2013 年'),
    HotBooksModel(
        title: 'Web性能权权威指南',
        imageUrl: 'http://admin.soscoon.com/uploadImages/95b0838eb05d6f8f91ad924dd7e6e5ea672ef183.png',
        author: '伊亚·格里格里克, 2013 年'),
    HotBooksModel(
        title: 'C++编程思想',
        imageUrl: 'http://admin.soscoon.com/uploadImages/763229ced887b7e1e61a20aa1b14b42425c01e01.png',
        author: '埃克尔, 1995 年'),
    HotBooksModel(
        title: 'JavaScript高级程序设计',
        imageUrl: 'http://admin.soscoon.com/uploadImages/811efa8edb378c4711270ed8754553984224d5a5.png',
        author: '尼古拉斯·C·萨卡斯, 2005 年'),
    HotBooksModel(
        title: '编程珠玑',
        imageUrl: 'http://admin.soscoon.com/uploadImages/95b0838eb05d6f8f91ad924dd7e6e5ea672ef183.png',
        author: '乔恩·本特利, 1986 年'),
    HotBooksModel(
        title: 'Unix编程艺术',
        imageUrl: 'http://admin.soscoon.com/uploadImages/70e32ee82e0ec1748d780a15911d0d60d92e1b56.png',
        author: '埃里克·雷蒙, 2003 年'),
  ];
}
