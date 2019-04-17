// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'business_vo.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

BusinessVo _$BusinessVoFromJson(Map<String, dynamic> json) {
  return BusinessVo(
      json['bid'] as String,
      json['logo'] as String,
      json['name'] as String,
      json['addr'] as String,
      json['tel'] as String,
      json['latitude'] as String,
      json['longitude'] as String,
      json['content'] as String,
      json['remark'] as String,
      json['areaid'] as String,
      json['areaname'] as String,
      json['typeid'] as String,
      json['typename'] as String,
      json['category'] as int,
      json['status'] as int,
      json['isTop'] as int,
      (json['ratio'] as num)?.toDouble());
}

Map<String, dynamic> _$BusinessVoToJson(BusinessVo instance) =>
    <String, dynamic>{
      'bid': instance.bid,
      'logo': instance.logo,
      'name': instance.name,
      'addr': instance.addr,
      'tel': instance.tel,
      'latitude': instance.latitude,
      'longitude': instance.longitude,
      'content': instance.content,
      'remark': instance.remark,
      'areaid': instance.areaid,
      'areaname': instance.areaname,
      'typeid': instance.typeid,
      'typename': instance.typename,
      'category': instance.category,
      'status': instance.status,
      'isTop': instance.isTop,
      'ratio': instance.ratio
    };
