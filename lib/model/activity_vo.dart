import 'package:json_annotation/json_annotation.dart'; 
  
part 'activity_vo.g.dart';


@JsonSerializable()
  class ActivityVo extends Object {

  @JsonKey(name: 'id')
  String id;

  @JsonKey(name: 'title')
  String title;

  @JsonKey(name: 'content')
  String content;

  @JsonKey(name: 'img')
  String img;

  @JsonKey(name: 'type')
  int type;

  @JsonKey(name: 'busId')
  String busId;

  @JsonKey(name: 'status')
  int status;

  @JsonKey(name: 'createtm')
  String createtm;

  ActivityVo(this.id,this.title,this.content,this.img,this.type,this.busId,this.status,this.createtm,);

  factory ActivityVo.fromJson(Map<String, dynamic> srcJson) => _$ActivityVoFromJson(srcJson);

  Map<String, dynamic> toJson() => _$ActivityVoToJson(this);

}

  
 