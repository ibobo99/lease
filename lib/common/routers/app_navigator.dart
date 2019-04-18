import 'package:flutter/material.dart';


class AppNavigator {
  static push(BuildContext context, Widget scene) {
    Navigator.push(
      context,
      MaterialPageRoute(
        builder: (BuildContext context) => scene,
      ),
    );
  }

  // static pushNovelDetail(BuildContext context, Novel novel) {
  //   AppNavigator.push(context, NovelDetailScene(novel.id));
  // }

  // static pushLogin(BuildContext context) {
  //   Navigator.push(context, MaterialPageRoute(builder: (context) {
  //     return LoginScene();
  //   }));
  // }

  // static pushWeb(BuildContext context, String url, String title) {
  //   Navigator.push(context, MaterialPageRoute(builder: (context) {
  //     return WebScene(url: url, title: title);
  //   }));
  // }


}
