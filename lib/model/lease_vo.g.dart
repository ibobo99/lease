// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'lease_vo.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

LeaseVo _$LeaseVoFromJson(Map<String, dynamic> json) {
  return LeaseVo(
      json['lid'] as String,
      json['name'] as String,
      json['typeid'] as String,
      json['content'] as String,
      json['status'] as int,
      (json['price'] as num)?.toDouble(),
      (json['deposit'] as num)?.toDouble(),
      json['typename'] as String,
      json['pic'] as String,
      json['isTop'] as int);
}

Map<String, dynamic> _$LeaseVoToJson(LeaseVo instance) => <String, dynamic>{
      'lid': instance.lid,
      'name': instance.name,
      'typeid': instance.typeid,
      'content': instance.content,
      'status': instance.status,
      'price': instance.price,
      'deposit': instance.deposit,
      'typename': instance.typename,
      'pic': instance.pic,
      'isTop': instance.isTop
    };
