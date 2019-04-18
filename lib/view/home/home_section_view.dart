import 'package:flutter/material.dart';
import 'package:lease/common/config/my_color.dart';
import 'package:lease/common/routers/app_navigator.dart';
import 'package:lease/view/home/lease_list_view.dart';
import 'package:lease/view/home/business_list_view.dart';

class HomeSectionView extends StatelessWidget {
  final String title;
  final int type;
  HomeSectionView(this.title, this.type);

  @override
  Widget build(BuildContext context) {
    return Container(
      color: MyColor.paper,
      padding: EdgeInsets.fromLTRB(15, 15, 0, 5),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: <Widget>[
          Container(
              child: Row(
            children: <Widget>[
              Image.asset('images/home_tip.png'),
              SizedBox(width: 10),
              Text(
                '$title',
                style: TextStyle(fontSize: 15, fontWeight: FontWeight.bold),
              ),
            ],
          )),
          GestureDetector(
            onTap: () {
              switch (type) {
                case 1:
                  AppNavigator.push(context,LeaseListView());
                  break;
                case 2:
                  AppNavigator.push(context, BusinessListView());
                  break;
              }
              //AppNavigator.push(context, LeaseListView())
            },
            child: Text(
              '更多》',
              style: TextStyle(
                fontSize: 16,
              ),
            ),
          )
        ],
      ),
    );
  }
}
