import 'package:flutter/material.dart';
import 'package:lease/model/business_vo.dart';
import 'package:lease/common/config/my_color.dart';
import 'package:lease/widget/goods_cover_image.dart';

class BusinessCoverView extends StatelessWidget {
  final BusinessVo novel;

  BusinessCoverView(this.novel);

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        //AppNavigator.pushNovelDetail(context, novel);
      },
      child: Container(
        padding: EdgeInsets.all(15),
        child: Row(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            CircleAvatar(
               backgroundColor: Color(0xffff0000),
               backgroundImage: new NetworkImage(novel.logo),
              radius: 30.0,
              foregroundColor: Color(0x55000000),
            ),
            SizedBox(width: 15),
            Expanded(
              child: buildRight(),
            ),
          ],
        ),
      ),
    );
  }

  Widget buildRight() {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: <Widget>[
        Text(
          novel.name,
          style: TextStyle(fontSize: 17, fontWeight: FontWeight.bold),
        ),
        SizedBox(height: 5),
        Text(
          novel.name,
          maxLines: 2,
          overflow: TextOverflow.ellipsis,
          style: TextStyle(
            fontSize: 14,
            color: MyColor.gray,
          ),
        ),
        SizedBox(height: 5),
        Row(
          children: <Widget>[
            Text(
              novel.addr,
              style: TextStyle(fontSize: 14, color: MyColor.gray),
            ),
          ],
        )
      ],
    );
  }

  Widget buildTag(String title, Color color) {
    return Container(
      padding: EdgeInsets.fromLTRB(5, 2, 5, 3),
      decoration: BoxDecoration(
        border: Border.all(color: Color.fromARGB(99, color.red, color.green, color.blue), width: 0.5),
        borderRadius: BorderRadius.circular(3),
      ),
      child: Text(
        title,
        style: TextStyle(fontSize: 11, color: color),
      ),
    );
  }
}
