import 'package:flutter/material.dart';
import 'package:lease/model/banner_vo.dart';
import 'package:lease/model/goods_vo.dart';
import 'package:lease/model/lease_vo.dart';
import 'package:lease/model/business_vo.dart';
import 'package:lease/common/net/api.dart';
import 'package:lease/common/net/result_data.dart';
import 'package:lease/widget/banner_widget.dart';
import 'package:lease/widget/goods_cover_view.dart';
import 'package:lease/widget/lease_cover_view.dart';
import 'package:lease/widget/business_cover_view.dart';

import 'home_section_view.dart';

class HomeView extends StatefulWidget {
  @override
  _HomeViewState createState() => _HomeViewState();
}

class _HomeViewState extends State<HomeView> {
  //获取轮播图数组
  List<BannerVo> _bannerList = [];
  //租赁数组
  List<Widget> _leaseList = [new Container(width: 0,height: 0,)];
  //商家数组
  List<Widget> _businessList = [new Container(width: 0,height: 0,)];
  //商品数组
  List<Widget> _goodsList = [new Container(width: 0,height: 0,)];

  @override
  void initState() {
    super.initState();
    //获取banner列表
    _init_banner();
     //获取租赁品列表
    _init_lease();
     //获取商家列表
    _init_businsess();
    //获取商品列表
    _init_goods();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text('首页'),
        ),
        body: SingleChildScrollView(
          child: Column(
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
                              Image.asset("images/nav4.png"),
                              SizedBox(height: 8.0),
                              Text('分享')
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
                //商品头部
                HomeSectionView('租赁'),
                //商品列表
                Container(
                  padding: EdgeInsets.fromLTRB(15, 10, 15, 10),
                  child:Wrap(
                          spacing: 15,
                          runSpacing: 20,
                          children:_leaseList
                        )
                     
                ),
                 //分割线
                SizedBox(
                  height: 8.0,
                ),
                //商品头部
                HomeSectionView('商铺'),
                //商品列表
                Container(
                  padding: EdgeInsets.fromLTRB(15, 10, 15, 10),
                  child:Wrap(
                          spacing: 15,
                          runSpacing: 20,
                          children:_businessList
                        )
                     
                ),
                //分割线
                SizedBox(
                  height: 8.0,
                ),
                //商品头部
                HomeSectionView('商品'),
                //商品列表
                Container(
                  padding: EdgeInsets.fromLTRB(15, 10, 15, 10),
                  child:Wrap(
                          spacing: 15,
                          runSpacing: 20,
                          children:_goodsList
                        )
                     
                ),
              ]),
        ));
  }

  void _init_banner() async {
    ResultData d = await Api.post('/banner/listByCondition', {'module': '1'});
    setState(() {
      _bannerList = [];
      d.data['data'].forEach((novel) {
        _bannerList.add(BannerVo.fromJson(novel));
      });
    });
  }

  void _init_lease() async {
    ResultData d = await Api.post('/leaseRes/list4Page', {'pageSize': '4'});
    setState(() {
      _leaseList= [];
      d.data['data']['data'].forEach(
        (novel)=>{
           _leaseList.add(LeaseCoverView(LeaseVo.fromJson(novel)))
        }
      );
      if(_leaseList.length==0){
        _leaseList.add(new Container(width: 0,height: 0,));
      }
    });
  }

  void _init_businsess() async {
    ResultData d = await Api.post('/business/list4Page', {'pageSize': '4'});
    setState(() {
      _businessList = [];
      d.data['data']['data'].forEach(
        (novel)=>{
           _businessList.add(BusinessCoverView(BusinessVo.fromJson(novel)))
        }
      );
      if(_businessList.length==0){
        _businessList.add(new Container(width: 0,height: 0,));
      }
    });
  }

  void _init_goods() async {
    ResultData d = await Api.post('/goods/list4Page', {'pageSize': '4'});
    setState(() {
      _goodsList= [];
      d.data['data']['data'].forEach(
        (novel)=>{
           _goodsList.add(GoodsCoverView(GoodsVo.fromJson(novel)))
        }
      );
      if(_goodsList.length==0){
        _goodsList.add(new Container(width: 0,height: 0,));
      }
    });
  }
}
