import 'package:flutter/material.dart';
import 'dart:async';
import 'package:lease/common/config/my_color.dart';


import 'code_button.dart';

class LoginView extends StatefulWidget {
  @override
  State<StatefulWidget> createState() => LoginViewState();
}

class LoginViewState extends State {
  TextEditingController phoneEditer = TextEditingController();
  TextEditingController codeEditer = TextEditingController();
  int coldDownSeconds = 0;
  Timer timer;

  fetchSmsCode() async {
    // if (phoneEditer.text.length == 0) {
    //   return;
    // }
    // try {
    //   await Request.post(
    //     action: 'sms',
    //     params: {'phone': phoneEditer.text, 'type': 'login'},
    //   );
    //   setState(() {
    //     coldDownSeconds = 60;
    //   });
    //   coldDown();
    // } catch (e) {
    //   Toast.show(e.toString());
    // }
  }

  login() async {

  }

  @override
  void dispose() {
    if (timer != null) {
      timer.cancel();
    }
    super.dispose();
  }

  coldDown() {
    timer = Timer(Duration(seconds: 1), () {
      setState(() {
        --coldDownSeconds;
      });

      coldDown();
    });
  }

  Widget buildPhone() {
    return Container(
      padding: EdgeInsets.symmetric(horizontal: 8),
      decoration: BoxDecoration(
        color: MyColor.paper,
        borderRadius: BorderRadius.circular(5),
      ),
      child: TextField(
        controller: phoneEditer,
        keyboardType: TextInputType.phone,
        style: TextStyle(fontSize: 14, color: MyColor.darkGray),
        decoration: InputDecoration(
          hintText: '请输入手机号',
          hintStyle: TextStyle(color: MyColor.gray),
          border: InputBorder.none,
        ),
      ),
    );
  }

  Widget buildCode() {
    return Container(
      padding: EdgeInsets.only(left: 8),
      decoration: BoxDecoration(
        color: MyColor.paper,
        borderRadius: BorderRadius.circular(5),
      ),
      child: Row(
        children: <Widget>[
          Flexible(
            child: TextField(
              controller: codeEditer,
              keyboardType: TextInputType.phone,
              style: TextStyle(fontSize: 14, color: MyColor.darkGray),
              decoration: InputDecoration(
                hintText: '请输入短信验证码',
                hintStyle: TextStyle(color: MyColor.gray),
                border: InputBorder.none,
              ),
            ),
          ),
          Container(color: Color(0xffdae3f2), width: 1, height: 40),
          CodeButton(
            onPressed: fetchSmsCode,
            coldDownSeconds: coldDownSeconds,
          ),
        ],
      ),
    );
  }

  Widget buildBody() {
    return Column(
      children: <Widget>[
        SizedBox(height: 20),
        Container(
          margin: EdgeInsets.symmetric(horizontal: 15),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: <Widget>[
              buildPhone(),
              SizedBox(height: 10),
              buildCode(),
              SizedBox(height: 10),
              Container(
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(5),
                  color: MyColor.primary,
                ),
                height: 40,
                child: FlatButton(
                  onPressed: login,
                  child: Text(
                    '登录',
                    style: TextStyle(fontSize: 16, color: Color(0xffffffff)),
                  ),
                ),
              ),
            ],
          ),
        )
      ],
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('登录'), elevation: 0),
      backgroundColor: Colors.white,
      body: buildBody(),
    );
  }
}
