import 'package:flutter/material.dart';
import 'package:carousel_slider/carousel_slider.dart';
import 'package:lease/model/banner_list.dart';
import 'package:lease/common/net/api.dart';
import 'package:lease/common/net/result_data.dart';

class HomeView extends StatefulWidget {
  @override
  _HomeViewState createState() => _HomeViewState();
}

class _HomeViewState extends State<HomeView> {

  List _images = [];

  @override
  void initState() {
    super.initState();
    _init_banner();
  }

  @override
  Widget build(BuildContext context) {
    return Container(
       child:Text('home')
    );
  }

  void _init_banner() async {
     ResultData d = await Api.post('/banner/listByCondition', {'module':1});
     BannerList _bannerList =  BannerList.fromJson(d.data);
     print(_bannerList.data.length);
  }

}