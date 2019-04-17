import 'package:flutter/material.dart';
import 'package:lease/model/activity_vo.dart';
import 'package:lease/common/config/my_color.dart';
import 'package:lease/widget/goods_cover_image.dart';
import 'package:flutter_widget_from_html/flutter_widget_from_html.dart';

class ActivityCoverView extends StatelessWidget {
  final ActivityVo novel;

  ActivityCoverView(this.novel);

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        //AppNavigator.pushNovelDetail(context, novel);
      },
      child: Container(
        padding: EdgeInsets.all(5),
        child: Row(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            NovelCoverImage(novel.img, width: 120, height: 90),
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
      mainAxisAlignment: MainAxisAlignment.end,
      children: <Widget>[
        Text(
          novel.title,
          maxLines: 2,
          overflow: TextOverflow.ellipsis,
          style: TextStyle(
            fontSize: 18,
            fontWeight: FontWeight.bold,
          ),
        ),
        SizedBox(height: 5),
        HtmlWidget(novel.content),
        Text(
          novel.createtm,
          style: TextStyle(fontSize: 14, color: MyColor.gray),
        ),
      ],
    );
  }

  Widget buildTag(String title, Color color) {
    return Container(
      padding: EdgeInsets.fromLTRB(5, 2, 5, 3),
      decoration: BoxDecoration(
        border: Border.all(
            color: Color.fromARGB(99, color.red, color.green, color.blue),
            width: 0.5),
        borderRadius: BorderRadius.circular(3),
      ),
      child: Text(
        title,
        style: TextStyle(fontSize: 11, color: color),
      ),
    );
  }
}
