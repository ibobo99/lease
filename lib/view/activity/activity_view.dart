import 'package:flutter/material.dart';
import 'package:lease/model/activity_vo.dart';
import 'package:lease/common/net/api.dart';
import 'package:lease/common/net/result_data.dart';
import 'package:lease/widget/activity_cover_view.dart';
import 'activity_section_view.dart';

class ActivityView extends StatefulWidget {
  @override
  _ActivityViewState createState() => _ActivityViewState();
}

class _ActivityViewState extends State<ActivityView> {
  //获活动列表
  List<Widget> _activityList = [new Container(width: 0,height: 0,)];

  @override
  void initState() {
    super.initState();
    //获取活动列表
    _init_activity();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text('活动'),
        ),
        body: SingleChildScrollView(
          child: Column(
              mainAxisAlignment: MainAxisAlignment.start,
              children: <Widget>[
                //分割线
                SizedBox(
                  height: 8.0,
                ),
                //商品头部
                ActivitySectionView('最新活动'),
                //商品列表
                Container(
                  padding: EdgeInsets.fromLTRB(8, 8,8,8),
                  child:Wrap(
                          spacing: 15,
                          runSpacing: 20,
                          children:_activityList
                        )
                ),
              ]),
        ));
  }
 
  void _init_activity() async {
    ResultData d = await Api.post('/activity/list4Page', {'pageSize': '4'});
    setState(() {
      _activityList= [];
      d.data['data']['data'].forEach(
        (novel)=>{
           _activityList.add(ActivityCoverView(ActivityVo.fromJson(novel)))
        }
      );
      if(_activityList.length==0){
        _activityList.add(new Container(width: 0,height: 0,));
      }
    });
  }
}
