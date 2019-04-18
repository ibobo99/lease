import 'package:flutter/material.dart';
import 'package:lease/model/banner_vo.dart';
import 'package:lease/common/net/api.dart';
import 'package:lease/common/net/result_data.dart';
import 'package:lease/widget/banner_widget.dart';
import 'package:lease/widget/business_list_widget.dart';
import 'package:lease/model/business_vo.dart';

class BusinessListView extends StatefulWidget {
  @override
  _BusinessListViewState createState() => _BusinessListViewState();
}

class _BusinessListViewState extends State<BusinessListView> {
  //获取轮播图数组
  List<BannerVo> _bannerList = [];
  //租赁数组
  List<Widget> _businessList = [new Container(width: 0,height: 0,)];

  @override
  void initState() {
    super.initState();
    //获取banner列表
    _init_banner();
    //获取租赁品列表
    _init_business();
   
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text('加盟店'),
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

    void _init_business() async {
    ResultData d = await Api.post('/business/list4Page', {'pageSize': '4'});
    setState(() {
      _businessList= [];
      d.data['data']['data'].forEach(
        (novel)=>{
           _businessList.add(BusinessListWidget(BusinessVo.fromJson(novel)))
        }
      );
      if(_businessList.length==0){
        _businessList.add(new Container(width: 0,height: 0,));
      }
    });
  }
}
