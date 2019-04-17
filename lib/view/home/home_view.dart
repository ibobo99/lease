import 'package:flutter/material.dart';
import 'package:lease/model/banner_list.dart';
import 'package:lease/common/net/api.dart';
import 'package:lease/common/net/result_data.dart';
import 'package:lease/widget/banner_widget.dart';

import 'home_section_view.dart';

class HomeView extends StatefulWidget {
  @override
  _HomeViewState createState() => _HomeViewState();
}

class _HomeViewState extends State<HomeView> {
  //获取轮播图数组
  BannerList _bannerList;

  @override
  void initState() {
    super.initState();
    _init_banner();
  }

  @override
  Widget build(BuildContext context) {
    return Column(
        mainAxisAlignment: MainAxisAlignment.start,
        children: <Widget>[
          //初始化bannner信息
          BannerWidget(_bannerList),
          //分割线
          SizedBox(
            height: 8.0,
          ),
          //二级导航栏
          Container(
            child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: <Widget>[
                  Container(
                    child: Column(
                      children: <Widget>[
                        Image.asset("images/nav1.png"),
                        SizedBox(height: 8.0),
                        Text(
                          '租赁',
                        )
                      ],
                    ),
                  ),
                  Container(
                    child: Column(
                      children: <Widget>[
                        Image.asset("images/nav2.png"),
                        SizedBox(height: 8.0),
                        Text('加盟店')
                      ],
                    ),
                  ),
                  Container(
                    child: Column(
                      children: <Widget>[
                        Image.asset("images/nav3.png"),
                        SizedBox(height: 8.0),
                        Text('商城')
                      ],
                    ),
                  ),
                  Container(
                    child: Column(
                      children: <Widget>[
                        Image.asset("images/nav4.png"),
                        SizedBox(height: 8.0),
                        Text('分享')
                      ],
                    ),
                  )
                ]),
          ),
          //分割线
          SizedBox(
            height: 8.0,
          ),
          //租赁头部
          HomeSectionView('租赁'),
          
        ]);
  }

  void _init_banner() async {
    ResultData d = await Api.post('/banner/listByCondition', {'module': '1'});
    setState(() {
        _bannerList = BannerList.fromJson(d.data);
    });
  }

    void _init_goods() async {
    ResultData d = await Api.post('/banner/listByCondition', {'module': '1'});
    setState(() {
        _bannerList = BannerList.fromJson(d.data);
    });
  }

}
