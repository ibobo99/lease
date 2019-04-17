// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'banner_vo.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

BannerVo _$BannerVoFromJson(Map<String, dynamic> json) {
  return BannerVo(
      json['busId'] as String,
      json['createtm'] as String,
      json['id'] as String,
      json['img'] as String,
      json['module'] as int,
      json['name'] as String,
      json['sort'] as int,
      json['status'] as int,
      json['type'] as int,
      json['url'] as String);
}

Map<String, dynamic> _$BannerVoToJson(BannerVo instance) => <String, dynamic>{
      'busId': instance.busId,
      'createtm': instance.createtm,
      'id': instance.id,
      'img': instance.img,
      'module': instance.module,
      'name': instance.name,
      'sort': instance.sort,
      'status': instance.status,
      'type': instance.type,
      'url': instance.url
    };
