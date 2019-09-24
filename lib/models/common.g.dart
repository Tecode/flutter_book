// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'common.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

CommonData _$CommonDataFromJson(Map<String, dynamic> json) {
  return CommonData(
    id: json['id'] as int,
    title: json['title'] as String,
    description: json['description'] as String,
    delete: json['delete'] as bool,
    author: json['author'] as String,
    bookImage: json['bookImage'] as String,
    content: json['content'] as String,
    recommend: json['recommend'] as bool,
    createdAt: DateTime.parse(json['createdAt'] as String),
    score: json['score'] as num,
    updatedAt: DateTime.parse(json['updatedAt'] as String),
    view: json['view'] as num,
  );
}

Map<String, dynamic> _$CommonDataToJson(CommonData instance) =>
    <String, dynamic>{
      'id': instance.id,
      'title': instance.title,
      'description': instance.description,
      'author': instance.author,
      'bookImage': instance.bookImage,
      'content': instance.content,
      'score': instance.score,
      'delete': instance.delete,
      'createdAt': instance.createdAt.toIso8601String(),
      'updatedAt': instance.updatedAt.toIso8601String(),
      'view': instance.view,
      'recommend': instance.recommend,
    };

CommonDataList _$CommonDataListFromJson(Map<String, dynamic> json) {
  return CommonDataList(
    (json['data'] as List)
        .map((e) => CommonData.fromJson(e as Map<String, dynamic>))
        .toList(),
    json['index'] as num,
    json['size'] as num,
    json['totalElements'] as num,
  );
}

Map<String, dynamic> _$CommonDataListToJson(CommonDataList instance) =>
    <String, dynamic>{
      'index': instance.index,
      'size': instance.size,
      'totalElements': instance.totalElements,
      'data': instance.data,
    };

VersionData _$VersionDataFromJson(Map<String, dynamic> json) {
  return VersionData(
    data: (json['data'] as List).map((e) => e as String).toList(),
    version: json['version'] as String,
  );
}

Map<String, dynamic> _$VersionDataToJson(VersionData instance) =>
    <String, dynamic>{
      'version': instance.version,
      'data': instance.data,
    };
