import 'package:flutter/material.dart';
import 'package:lease/model/goods_vo.dart';
import 'package:lease/widget/goods_cover_image.dart';
import 'package:flustars/flustars.dart';
import 'package:lease/common/config/my_color.dart';

class GoodsCoverView extends StatelessWidget {
  final GoodsVo novel;

  GoodsCoverView(this.novel);

  @override
  Widget build(BuildContext context) {
    var width = (ScreenUtil.getInstance().screenWidth - 15 * 2 - 15*3) / 2;
    return GestureDetector(
      onTap: () {
        //AppNavigator.pushNovelDetail(context, novel);
      },
      child: Container(
        width: width,
        margin: EdgeInsets.symmetric(horizontal: 7),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            NovelCoverImage(
              novel.pic,width: width, height: width * 0.75
            ),
            Text(
              novel.name,
              overflow: TextOverflow.ellipsis,
              style: TextStyle(fontSize: 14, fontWeight: FontWeight.bold),
              maxLines: 1,
            ),
            SizedBox(height: 3),
            Text(
              novel.price.toString(),
              style: TextStyle(fontSize: 12, color: MyColor.red),
              maxLines: 1,
            ),
          ],
        ),
      ),
    );
  }
}
