import 'package:flutter/material.dart';
import 'package:lease/model/goods_vo.dart';
import 'package:lease/widget/goods_cover_image.dart';

class NovelCoverView extends StatelessWidget {
  final GoodsVo novel;

  NovelCoverView(this.novel);

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        //AppNavigator.pushNovelDetail(context, novel);
      },
      child: Container(
        width: 90,
        margin: EdgeInsets.symmetric(horizontal: 7),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            NovelCoverImage(
              novel.pic,
              width: 90,
              height: 120,
            ),
            SizedBox(height: 10),
            Text(novel.name, style: TextStyle(fontSize: 12, fontWeight: FontWeight.bold), maxLines: 2),
          ],
        ),
      ),
    );
  }
}
