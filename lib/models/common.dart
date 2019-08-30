import 'package:json_annotation/json_annotation.dart';

part 'common.g.dart';

// 公共的列表数据格式

@JsonSerializable(nullable: false)
class CommonData {
  final int id;
  final String title;
  final String description;
  final String author;
  final String bookImage;
  final String content;
  final num score;
  final bool delete;
  final DateTime createdAt;
  final DateTime updatedAt;
  final num view;
  final bool recommend;
  CommonData(
      {this.id,
      this.title,
      this.description,
      this.delete,
      this.author,
      this.bookImage,
      this.content,
      this.recommend,
      this.createdAt,
      this.score,
      this.updatedAt,
      this.view});
  factory CommonData.fromJson(Map<String, dynamic> json) =>
      _$CommonDataFromJson(json);
  Map<String, dynamic> toJson() => _$CommonDataToJson(this);
}

@JsonSerializable(nullable: false)
class CommonDataList {
  final num index;
  final num size;
  final num totalElements;

  @JsonKey(name: 'data')
  final List<CommonData> data;

  CommonDataList(this.data, this.index, this.size, this.totalElements);

  factory CommonDataList.fromJson(Map<String, dynamic> json) =>
      _$CommonDataListFromJson(json);
}

// 版本信息

@JsonSerializable(nullable: false)
class VersionData {
  final String version;
  final List<String> data;
  VersionData({this.data, this.version});
  factory VersionData.fromJson(Map<String, dynamic> json) =>
      _$VersionDataFromJson(json);
}
