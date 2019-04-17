import 'package:flutter/material.dart';
import 'package:lease/model/goods_vo.dart';
import 'package:flustars/flustars.dart';
import 'package:lease/common/config/my_color.dart';
import 'package:lease/widget/goods_cover_image.dart';

class NovelGridItem extends StatelessWidget {
  final GoodsVo novel;

  NovelGridItem(this.novel);

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
                    '哪儿',
                    maxLines: 2,
                    style: TextStyle(fontSize: 16, height: 0.9, fontWeight: FontWeight.bold),
                  ),
                  Text(
                    '什么',
                    style: TextStyle(fontSize: 12, color: MyColor.gray),
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
