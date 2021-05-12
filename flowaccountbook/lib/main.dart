/*
 * @Author: your name
 * @Date: 2021-05-12 00:35:16
 * @LastEditTime: 2021-05-12 14:42:56
 * @LastEditors: Please set LastEditors
 * @Description: In User Settings Edit
 * @FilePath: \FlowAccountBook\flowaccountbook\lib\main.dart
 */
import 'package:flutter/material.dart';
import './pages/home/home.dart';
import './pages/bill/bill.dart';
import './pages/Statistics/Statistics.dart';
import './pages/invest/invest.dart';
import './pages/me/me.dart';
import './navibars/bottomnavibar/bottomNaviBar.dart';

main(List<String> args) {
  return runApp(FAbook());
}

List pageList = [
  HomePage(),
  BillPage(),
  StatisticsPage(),
  InvestPage(),
  MePage()
];

class FAbook extends StatefulWidget {
  @override
  _FAbookState createState() => _FAbookState();
}

class _FAbookState extends State<FAbook> {
  int _currentIndex = 0;

  void _onTab(int index) {
    print(index);
    setState(() {
      _currentIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        home: Scaffold(
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
    ));
  }
}
