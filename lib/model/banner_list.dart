import 'package:json_annotation/json_annotation.dart'; 
  
part 'banner_list.g.dart';


@JsonSerializable()
  class BannerList extends Object {

  @JsonKey(name: 'data')
  List<Data> data;

  BannerList(this.data,);

  factory BannerList.fromJson(Map<String, dynamic> srcJson) => _$BannerListFromJson(srcJson);

  Map<String, dynamic> toJson() => _$BannerListToJson(this);

}

  
@JsonSerializable()
  class Data extends Object {

  @JsonKey(name: 'id')
  String id;

  @JsonKey(name: 'module')
  int module;

  @JsonKey(name: 'img')
  String img;

  @JsonKey(name: 'url')
  String url;

  @JsonKey(name: 'createtm')
  String createtm;

  @JsonKey(name: 'status')
  int status;

  @JsonKey(name: 'type')
  int type;

  @JsonKey(name: 'busId')
  String busId;

  Data(this.id,this.module,this.img,this.url,this.createtm,this.status,this.type,this.busId,);

  factory Data.fromJson(Map<String, dynamic> srcJson) => _$DataFromJson(srcJson);

  Map<String, dynamic> toJson() => _$DataToJson(this);

}

  
