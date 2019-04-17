import 'package:json_annotation/json_annotation.dart'; 
  
part 'business_vo.g.dart';


@JsonSerializable()
  class BusinessVo extends Object {

  @JsonKey(name: 'bid')
  String bid;

  @JsonKey(name: 'logo')
  String logo;

  @JsonKey(name: 'name')
  String name;

  @JsonKey(name: 'addr')
  String addr;

  @JsonKey(name: 'tel')
  String tel;

  @JsonKey(name: 'latitude')
  String latitude;

  @JsonKey(name: 'longitude')
  String longitude;

  @JsonKey(name: 'content')
  String content;

  @JsonKey(name: 'remark')
  String remark;

  @JsonKey(name: 'areaid')
  String areaid;

  @JsonKey(name: 'areaname')
  String areaname;

  @JsonKey(name: 'typeid')
  String typeid;

  @JsonKey(name: 'typename')
  String typename;

  @JsonKey(name: 'category')
  int category;

  @JsonKey(name: 'status')
  int status;

  @JsonKey(name: 'isTop')
  int isTop;

  @JsonKey(name: 'ratio')
  double ratio;

  BusinessVo(this.bid,this.logo,this.name,this.addr,this.tel,this.latitude,this.longitude,this.content,this.remark,this.areaid,this.areaname,this.typeid,this.typename,this.category,this.status,this.isTop,this.ratio,);

  factory BusinessVo.fromJson(Map<String, dynamic> srcJson) => _$BusinessVoFromJson(srcJson);

  Map<String, dynamic> toJson() => _$BusinessVoToJson(this);

}

  
