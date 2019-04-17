import 'package:flutter/material.dart';
import 'package:lease/common/config/my_color.dart';

class HomeSectionView extends StatelessWidget {
  final String title;
  HomeSectionView(this.title);

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
          Text(
            '更多》',
            style: TextStyle(
              fontSize: 16,
            ),
          ),
        ],
      ),
    );
  }
}
