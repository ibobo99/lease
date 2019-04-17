import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';
import 'package:lease/common/config/my_color.dart';
import 'package:lease/view/home/home_view.dart';
import 'package:lease/view/me/me_view.dart';
import 'package:lease/view/activity/activity_view.dart';

class RootView extends StatefulWidget {
  @override
  State<StatefulWidget> createState() =>RootViewState();
}

class RootViewState extends State<RootView> {
  int _tabIndex = 0;
  var _title = const ['首页', '活动', '我的'];

  @override
  void initState() {
    super.initState();
  }

  @override
  void dispose() {
    // eventBus.off(EventToggleTabBarIndex);
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // appBar: AppBar(
      //   title: Text(_title[_tabIndex]),
      // ),
      body: IndexedStack(
        children: <Widget>[
          HomeView(),
          ActivityView(),
          MeView(),
        ],
        index: _tabIndex,
      ),
      bottomNavigationBar: CupertinoTabBar(
        backgroundColor: Colors.white,
        activeColor: MyColor.primary,
        items: <BottomNavigationBarItem>[
          BottomNavigationBarItem(
              icon: Icon(CupertinoIcons.home), title: Text('首页')),
          BottomNavigationBarItem(
              icon: Icon(CupertinoIcons.game_controller), title: Text('活动')),
          BottomNavigationBarItem(
              icon: Icon(CupertinoIcons.person), title: Text('我的')),
        ],
        currentIndex: _tabIndex,
        onTap: (index) {
          setState(() {
            _tabIndex = index;
          });
        },
      ),
    );
  }
}
