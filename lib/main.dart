import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';
import 'package:lease/common/config/my_color.dart';
import 'package:lease/root_view.dart';

void main(){
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: '骑享多',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        backgroundColor: Colors.white,
        dividerColor: Color(0xffeeeeee),
        scaffoldBackgroundColor: Colors.white,
        textTheme: TextTheme(body1: TextStyle(color: MyColor.darkGray)),
        //primarySwatch:Colors.white12
      ),
      home:RootView(),
    );
  }
}

