/*
 * @Author: icemaple
 * @Date: 2021-05-12 09:02:25
 * @LastEditTime: 2021-05-12 09:24:40
 * @LastEditors: Please set LastEditors
 * @Description: In User Settings Edit
 * @FilePath: \FlowAccountBook\flowaccountbook\lib\pages\home\home.dart
 */

import 'package:flutter/material.dart';

class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("首页标题"),
      ),
      body: Text("首页"),
    );
  }
}
