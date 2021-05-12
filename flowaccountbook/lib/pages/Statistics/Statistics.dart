/*
 * @Author: icemaple
 * @Date: 2021-05-12 09:05:09
 * @LastEditTime: 2021-05-12 09:25:57
 * @LastEditors: Please set LastEditors
 * @Description: In User Settings Edit
 * @FilePath: \FlowAccountBook\flowaccountbook\lib\pages\Statistics\Statistics.dart
 */

import 'package:flutter/material.dart';

class StatisticsPage extends StatefulWidget {
  @override
  _StatisticsPageState createState() => _StatisticsPageState();
}

class _StatisticsPageState extends State<StatisticsPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("报表标题"),
      ),
      body: Text("报表页面"),
    );
  }
}
