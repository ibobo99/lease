import 'package:flutter/material.dart';
import 'package:lease/model/banner_vo.dart';
import 'package:carousel_slider/carousel_slider.dart';
import 'package:flustars/flustars.dart';
import 'package:cached_network_image/cached_network_image.dart';

class BannerWidget extends StatelessWidget {
 final List<BannerVo> _bannerList ;

  BannerWidget(this._bannerList);

  @override
  Widget build(BuildContext context) {
    if(_bannerList.length==0){
      return SizedBox();
    }
    return Container(
      color: Colors.white,
      child: CarouselSlider(
        items: _bannerList.map((info) {
          return Builder(
            builder: (BuildContext context) {
              return Container(
                width: ScreenUtil.getInstance().screenWidth,
                margin: EdgeInsets.symmetric(horizontal: 5.0),
                child:Image(image: new CachedNetworkImageProvider(info.img??''), fit:BoxFit.cover),
              );
            },
          );
        }).toList(),
        aspectRatio: 2,
        autoPlayInterval: const Duration(seconds: 5),
        autoPlay: true,
      ),
    );
  }
}