import 'package:flutter/material.dart';
import 'package:lease/model/banner_vo.dart';
import 'package:lease/common/net/api.dart';
import 'package:lease/common/net/result_data.dart';
import 'package:lease/widget/banner_widget.dart';
import 'package:lease/widget/lease_list_widget.dart';
import 'package:lease/model/lease_vo.dart';


class LeaseListView extends StatefulWidget {
  @override
  _LeaseListViewState createState() => _LeaseListViewState();
}

class _LeaseListViewState extends State<LeaseListView> {
  //获取轮播图数组
  List<BannerVo> _bannerList = [];
  //租赁数组
  List<Widget> _leaseList = [new Container(width: 0,height: 0,)];

  @override
  void initState() {
    super.initState();
    //获取banner列表
    _init_banner();
    //获取租赁品列表
    _init_lease();
   
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text('租赁'),
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
                          children:_leaseList
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

    void _init_lease() async {
    ResultData d = await Api.post('/leaseRes/list4Page', {'pageSize': '4'});
    setState(() {
      _leaseList= [];
      d.data['data']['data'].forEach(
        (novel)=>{
           _leaseList.add(LeaseListWidget(LeaseVo.fromJson(novel)))
        }
      );
      if(_leaseList.length==0){
        _leaseList.add(new Container(width: 0,height: 0,));
      }
    });
  }
}
