/*
 * @Author: your name
 * @Date: 2021-05-12 15:34:59
 * @LastEditTime: 2021-05-12 15:48:57
 * @LastEditors: Please set LastEditors
 * @Description: In User Settings Edit
 * @FilePath: \FlowAccountBook\flowaccountbook\lib\pages\startup\startup.dart
 */

import 'package:flutter/material.dart';
import '../home/home.dart';
import '../bill/bill.dart';
import '../statistics/statistics.dart';
import '../invest/invest.dart';
import '../me/me.dart';
import 'package:flowaccountbook/navibars/bottomnavibar/bottomNaviBar.dart';

List pageList = [
  HomePage(),
  BillPage(),
  StatisticsPage(),
  InvestPage(),
  MePage()
];

class StartUpPage extends StatefulWidget {
  @override
  _StartUpPageState createState() => _StartUpPageState();
}

class _StartUpPageState extends State<StartUpPage> {
  int _currentIndex = 0;

  void _onTab(int index) {
    print(index);
    setState(() {
      _currentIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // appBar: AppBar(
      //   title: Text("首页标题"),
      // ),
      body: Container(
        child: pageList[_currentIndex],
      ),
      bottomNavigationBar: BottomNaviBar(
        curIndex: _currentIndex,
        onMyTab: _onTab,
      ),
    );
  }
}
