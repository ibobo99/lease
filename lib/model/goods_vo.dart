import 'package:json_annotation/json_annotation.dart'; 
  
part 'goods_vo.g.dart';


@JsonSerializable()
  class GoodsVo extends Object {

  @JsonKey(name: 'gid')
  String gid;

  @JsonKey(name: 'name')
  String name;

  @JsonKey(name: 'price')
  int price;

  @JsonKey(name: 'bid')
  String bid;

  @JsonKey(name: 'content')
  String content;

  @JsonKey(name: 'status')
  int status;

  @JsonKey(name: 'pic')
  String pic;

  @JsonKey(name: 'uselevel')
  int uselevel;

  @JsonKey(name: 'topflag')
  int topflag;

  @JsonKey(name: 'typeid')
  String typeid;

  @JsonKey(name: 'typename')
  String typename;

  @JsonKey(name: 'bname')
  String bname;

  @JsonKey(name: 'isTop')
  int isTop;

  GoodsVo(this.gid,this.name,this.price,this.bid,this.content,this.status,this.pic,this.uselevel,this.topflag,this.typeid,this.typename,this.bname,this.isTop,);

  factory GoodsVo.fromJson(Map<String, dynamic> srcJson) => _$GoodsVoFromJson(srcJson);

  Map<String, dynamic> toJson() => _$GoodsVoToJson(this);

}
