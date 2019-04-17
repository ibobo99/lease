import 'package:flutter/material.dart';

import 'package:lease/common/config/my_color.dart';

class SettingView extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    List<Widget> children = [];

    if (true) {
      children.add(GestureDetector(
        onTap: () {
          Navigator.pop(context);
          //UserManager.instance.logout();
        },
        child: Container(
          height: 50,
          color: Colors.white,
          child: Center(
            child: Text('退出登录', style: TextStyle(fontSize: 16, color: MyColor.red)),
          ),
        ),
      ));
    }
    return Scaffold(
      appBar: AppBar(title: Text('设置'), elevation: 0.5),
      body: Container(
        child: ListView(
          children: children,
        ),
      ),
    );
  }
}
