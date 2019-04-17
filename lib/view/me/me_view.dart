import 'package:flutter/material.dart';
import 'package:lease/common/config/my_color.dart';
import 'package:flustars/flustars.dart';

import 'me_header.dart';
import 'me_cell.dart';
import 'setting_view.dart';


class MeView extends StatefulWidget {
  @override
  _MeViewState createState() => _MeViewState();
}

class _MeViewState extends State<MeView> {
  Widget buildCells(BuildContext context) {
    return Container(
      child: Column(
        children: <Widget>[
         MeCell(
            title: '充值记录',
            iconName: 'images/me_wallet.png',
            onPressed: () {},
          ),
          MeCell(
            title: '押金记录',
            iconName: 'images/me_record.png',
            onPressed: () {},
          ),
          MeCell(
            title: '租赁记录',
            iconName: 'images/me_buy.png',
            onPressed: () {},
          ),
          MeCell(
            title: '消费记录',
            iconName: 'images/me_vip.png',
            onPressed: () {},
          ),
          MeCell(
            title: '点金券记录',
            iconName: 'images/me_coupon.png',
            onPressed: () {},
          ),
          MeCell(
            title: '积分明细',
            iconName: 'images/me_date.png',
            onPressed: () {},
          ),
          MeCell(
            title: '设置',
            iconName: 'images/me_setting.png',
            onPressed: () {
              Navigator.push(context, MaterialPageRoute(builder: (context) {
                return SettingView();
              }));
            },
          ),
        ],
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
  return Scaffold(
      appBar: PreferredSize(
        child: Container(color: MyColor.white),
        preferredSize: Size(ScreenUtil.getScreenW(context), 0),
      ),
      body: Container(
        color: Colors.white,
        child: ListView(
          children: <Widget>[
            MeHeader(),
            SizedBox(height: 10),
            buildCells(context),
          ],
        ),
      ),
    );
  }
}