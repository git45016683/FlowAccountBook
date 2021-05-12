/*
 * @Author: icemaple
 * @Date: 2021-05-12 09:06:29
 * @LastEditTime: 2021-05-12 09:27:14
 * @LastEditors: Please set LastEditors
 * @Description: In User Settings Edit
 * @FilePath: \FlowAccountBook\flowaccountbook\lib\pages\me\me.dart
 */

import 'package:flutter/material.dart';

class MePage extends StatefulWidget {
  @override
  _MePageState createState() => _MePageState();
}

class _MePageState extends State<MePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("我的标题"),
      ),
      body: Text("我的页面"),
    );
  }
}
