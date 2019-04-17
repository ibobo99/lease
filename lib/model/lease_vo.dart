import 'package:json_annotation/json_annotation.dart'; 
  
part 'lease_vo.g.dart';


@JsonSerializable()
  class LeaseVo extends Object {

  @JsonKey(name: 'lid')
  String lid;

  @JsonKey(name: 'name')
  String name;

  @JsonKey(name: 'typeid')
  String typeid;

  @JsonKey(name: 'content')
  String content;

  @JsonKey(name: 'status')
  int status;

  @JsonKey(name: 'price')
  double price;

  @JsonKey(name: 'deposit')
  double deposit;

  @JsonKey(name: 'typename')
  String typename;

  @JsonKey(name: 'pic')
  String pic;

  @JsonKey(name: 'isTop')
  int isTop;

  LeaseVo(this.lid,this.name,this.typeid,this.content,this.status,this.price,this.deposit,this.typename,this.pic,this.isTop,);

  factory LeaseVo.fromJson(Map<String, dynamic> srcJson) => _$LeaseVoFromJson(srcJson);

  Map<String, dynamic> toJson() => _$LeaseVoToJson(this);

}

  
