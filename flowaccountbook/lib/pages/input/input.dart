/*
 * @Author: icemaple
 * @Date: 2021-05-12 14:25:29
 * @LastEditTime: 2021-05-13 04:40:15
 * @LastEditors: Please set LastEditors
 * @Description: In User Settings Edit
 * @FilePath: \FlowAccountBook\flowaccountbook\lib\pages\input\input.dart
 */

import 'package:flowaccountbook/pages/input/inputitem.dart';
import 'package:flowaccountbook/pages/input/internaltransferitem.dart';
import 'package:flowaccountbook/pages/input/outputitem.dart';
import 'package:flutter/material.dart';

class InputPage extends StatefulWidget {
  @override
  _InputPageState createState() => _InputPageState();
}

class _InputPageState extends State<InputPage>
    with SingleTickerProviderStateMixin {
  TabController _tabController;

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    _tabController = new TabController(length: 3, vsync: this);
  }

  @override
  void dispose() {
    // TODO: implement dispose
    super.dispose();
    _tabController.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: IconButton(
          icon: Icon(Icons.close),
          onPressed: () {
            print("关闭钱包页面");
            Navigator.pop(context);
          },
        ),
        title: TabBar(
          // 中间的控件
          controller: _tabController,
          tabs: <Widget>[
            Tab(
              text: "流出",
            ),
            Tab(
              text: "流入",
            ),
            Tab(
              text: "内部转账",
            ),
          ],
        ),
        titleSpacing: 0.0,
        actions: <Widget>[
          Icon(null),
          Icon(null),
        ],
      ),
      body: TabBarView(
        controller: _tabController, // 必要
        children: <Widget>[
          OutputItemPage(),
          InputItemPage(),
          InternalTransferItemPage(),
        ],
      ),
    );
  }
}
