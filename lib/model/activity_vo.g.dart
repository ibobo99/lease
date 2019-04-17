// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'activity_vo.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

ActivityVo _$ActivityVoFromJson(Map<String, dynamic> json) {
  return ActivityVo(
      json['id'] as String,
      json['title'] as String,
      json['content'] as String,
      json['img'] as String,
      json['type'] as int,
      json['busId'] as String,
      json['status'] as int,
      json['createtm'] as String);
}

Map<String, dynamic> _$ActivityVoToJson(ActivityVo instance) =>
    <String, dynamic>{
      'id': instance.id,
      'title': instance.title,
      'content': instance.content,
      'img': instance.img,
      'type': instance.type,
      'busId': instance.busId,
      'status': instance.status,
      'createtm': instance.createtm
    };
