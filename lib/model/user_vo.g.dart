// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'user_vo.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

UserVo _$UserVoFromJson(Map<String, dynamic> json) {
  return UserVo(
      json['address'] as String,
      (json['balance'] as num)?.toDouble(),
      (json['coupon'] as num)?.toDouble(),
      (json['deposit'] as num)?.toDouble(),
      json['headurl'] as String,
      json['level'] as int,
      json['levelName'] as String,
      json['mobile'] as String,
      json['name'] as String,
      json['nickname'] as String,
      json['passwd'] as String,
      json['point'] as int,
      json['status'] as int,
      json['totalPoint'] as int,
      json['uid'] as String);
}

Map<String, dynamic> _$UserVoToJson(UserVo instance) => <String, dynamic>{
      'address': instance.address,
      'balance': instance.balance,
      'coupon': instance.coupon,
      'deposit': instance.deposit,
      'headurl': instance.headurl,
      'level': instance.level,
      'levelName': instance.levelName,
      'mobile': instance.mobile,
      'name': instance.name,
      'nickname': instance.nickname,
      'passwd': instance.passwd,
      'point': instance.point,
      'status': instance.status,
      'totalPoint': instance.totalPoint,
      'uid': instance.uid
    };
