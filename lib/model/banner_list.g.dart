// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'banner_list.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

BannerList _$BannerListFromJson(Map<String, dynamic> json) {
  return BannerList((json['data'] as List)
      ?.map((e) => e == null ? null : Data.fromJson(e as Map<String, dynamic>))
      ?.toList());
}

Map<String, dynamic> _$BannerListToJson(BannerList instance) =>
    <String, dynamic>{'data': instance.data};

Data _$DataFromJson(Map<String, dynamic> json) {
  return Data(
      json['id'] as String,
      json['module'] as int,
      json['img'] as String,
      json['url'] as String,
      json['createtm'] as String,
      json['status'] as int,
      json['type'] as int,
      json['busId'] as String);
}

Map<String, dynamic> _$DataToJson(Data instance) => <String, dynamic>{
      'id': instance.id,
      'module': instance.module,
      'img': instance.img,
      'url': instance.url,
      'createtm': instance.createtm,
      'status': instance.status,
      'type': instance.type,
      'busId': instance.busId
    };
