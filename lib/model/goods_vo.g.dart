// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'goods_vo.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

GoodsVo _$GoodsVoFromJson(Map<String, dynamic> json) {
  return GoodsVo(
      json['gid'] as String,
      json['name'] as String,
      json['price'] as int,
      json['bid'] as String,
      json['content'] as String,
      json['status'] as int,
      json['pic'] as String,
      json['uselevel'] as int,
      json['topflag'] as int,
      json['typeid'] as String,
      json['typename'] as String,
      json['bname'] as String,
      json['isTop'] as int);
}

Map<String, dynamic> _$GoodsVoToJson(GoodsVo instance) => <String, dynamic>{
      'gid': instance.gid,
      'name': instance.name,
      'price': instance.price,
      'bid': instance.bid,
      'content': instance.content,
      'status': instance.status,
      'pic': instance.pic,
      'uselevel': instance.uselevel,
      'topflag': instance.topflag,
      'typeid': instance.typeid,
      'typename': instance.typename,
      'bname': instance.bname,
      'isTop': instance.isTop
    };
