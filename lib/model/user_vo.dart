import 'package:json_annotation/json_annotation.dart'; 
  
part 'user_vo.g.dart';


@JsonSerializable()
  class UserVo extends Object {

  @JsonKey(name: 'address')
  String address;

  @JsonKey(name: 'balance')
  double balance;

  @JsonKey(name: 'coupon')
  double coupon;

  @JsonKey(name: 'deposit')
  double deposit;

  @JsonKey(name: 'headurl')
  String headurl;

  @JsonKey(name: 'level')
  int level;

  @JsonKey(name: 'levelName')
  String levelName;

  @JsonKey(name: 'mobile')
  String mobile;

  @JsonKey(name: 'name')
  String name;

  @JsonKey(name: 'nickname')
  String nickname;

  @JsonKey(name: 'passwd')
  String passwd;

  @JsonKey(name: 'point')
  int point;

  @JsonKey(name: 'status')
  int status;

  @JsonKey(name: 'totalPoint')
  int totalPoint;

  @JsonKey(name: 'uid')
  String uid;

  UserVo(this.address,this.balance,this.coupon,this.deposit,this.headurl,this.level,this.levelName,this.mobile,this.name,this.nickname,this.passwd,this.point,this.status,this.totalPoint,this.uid,);

  factory UserVo.fromJson(Map<String, dynamic> srcJson) => _$UserVoFromJson(srcJson);

  Map<String, dynamic> toJson() => _$UserVoToJson(this);

}

  
