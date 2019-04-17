import 'package:flutter/material.dart';
import 'package:lease/model/lease_vo.dart';
import 'package:flustars/flustars.dart';
import 'package:lease/common/config/my_color.dart';
import 'package:lease/widget/goods_cover_image.dart';

class LeaseCoverView extends StatelessWidget {
  final LeaseVo novel;

  LeaseCoverView(this.novel);

  @override
  Widget build(BuildContext context) {
    var width = (ScreenUtil.getInstance().screenWidth - 15 * 2 - 15) / 2;
    return GestureDetector(
      onTap: () {
        //AppNavigator.pushNovelDetail(context, this.vo);
      },
      child: Container(
        width: width,
        child: Row(
          children: <Widget>[
            NovelCoverImage(novel.pic, width: 50, height: 66),
            SizedBox(width: 10),
            Expanded(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: <Widget>[
                  Text(
                    novel.name,
                    maxLines: 2,
                    style: TextStyle(fontSize: 16, height: 0.9, fontWeight: FontWeight.bold),
                  ),
                  Text(
                    novel.price.toString(),
                    style: TextStyle(fontSize: 12, color: MyColor.red),
                  )
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
