import 'package:flutter/material.dart';
import 'package:cached_network_image/cached_network_image.dart';
import 'package:lease/common/config/my_color.dart';

class MeHeader extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    var user = null; //UserManager.currentUser;

    return GestureDetector(
      onTap: () {
        // if (UserManager.instance.isLogin) {
        //   AppNavigator.pushWeb(context, 'https://github.com/huanxsd/flutter_shuqi', 'Github');
        // } else {
        //   AppNavigator.pushLogin(context);
        // }
      },
      child: Container(
        color: MyColor.white,
        padding: EdgeInsets.fromLTRB(20, 30, 15, 15),
        child: Row(
          children: <Widget>[
            CircleAvatar(
              radius: 40,
              backgroundImage: user?.avatarUrl != null ? CachedNetworkImageProvider(user.avatarUrl) : AssetImage('images/placeholder_avatar.png'),
            ),
            SizedBox(width: 25),
            Expanded(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: <Widget>[
                  Text(
                    user != null ? user.nickname : '登录',
                    style: TextStyle(fontSize: 18),
                  ),
                  SizedBox(height: 10),
                  buildItems(),
                ],
              ),
            )
          ],
        ),
      ),
    );
  }

  Widget buildItems() {
    var user = null; ///UserManager.currentUser;

    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: <Widget>[
        buildItem(user != null ? user.wealth.toStringAsFixed(1) : '0.0', '押金'),
        buildItem(user != null ? user.coupon.toString() : '0', '积分'),
        buildItem(user != null ? user.monthlyTicket.toString() : '0', '充值金'),
        buildItem(user != null ? user.monthlyTicket.toString() : '0', '点金券'),
        Container(),
      ],
    );
  }

  Widget buildItem(String title, String subtitle) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: <Widget>[
        Text(
          title,
          style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
        ),
        SizedBox(height: 5),
        Text(
          subtitle,
          style: TextStyle(fontSize: 12, color: MyColor.gray),
        ),
      ],
    );
  }
}
