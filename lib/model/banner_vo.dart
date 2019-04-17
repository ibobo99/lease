import 'package:json_annotation/json_annotation.dart'; 
  
part 'banner_vo.g.dart';


@JsonSerializable()
  class BannerVo extends Object {

  @JsonKey(name: 'busId')
  String busId;

  @JsonKey(name: 'createtm')
  String createtm;

  @JsonKey(name: 'id')
  String id;

  @JsonKey(name: 'img')
  String img;

  @JsonKey(name: 'module')
  int module;

  @JsonKey(name: 'name')
  String name;

  @JsonKey(name: 'sort')
  int sort;

  @JsonKey(name: 'status')
  int status;

  @JsonKey(name: 'type')
  int type;

  @JsonKey(name: 'url')
  String url;

  BannerVo(this.busId,this.createtm,this.id,this.img,this.module,this.name,this.sort,this.status,this.type,this.url,);

  factory BannerVo.fromJson(Map<String, dynamic> srcJson) => _$BannerVoFromJson(srcJson);

  Map<String, dynamic> toJson() => _$BannerVoToJson(this);

}

  
