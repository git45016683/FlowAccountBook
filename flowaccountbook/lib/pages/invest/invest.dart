/*
 * @Author: icemaple
 * @Date: 2021-05-12 09:06:11
 * @LastEditTime: 2021-05-12 09:26:35
 * @LastEditors: Please set LastEditors
 * @Description: In User Settings Edit
 * @FilePath: \FlowAccountBook\flowaccountbook\lib\pages\invest\invest.dart
 */

import 'package:flutter/material.dart';

class InvestPage extends StatefulWidget {
  @override
  _InvestPageState createState() => _InvestPageState();
}

class _InvestPageState extends State<InvestPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("赚钱标题"),
      ),
      body: Text("赚钱页面"),
    );
  }
}
