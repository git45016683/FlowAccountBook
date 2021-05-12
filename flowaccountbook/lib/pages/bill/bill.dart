/*
 * @Author: icemaple
 * @Date: 2021-05-12 09:03:27
 * @LastEditTime: 2021-05-12 09:25:24
 * @LastEditors: Please set LastEditors
 * @Description: In User Settings Edit
 * @FilePath: \FlowAccountBook\flowaccountbook\lib\pages\bill\bill.dart
 */

import 'package:flutter/material.dart';

class BillPage extends StatefulWidget {
  @override
  _BillPageState createState() => _BillPageState();
}

class _BillPageState extends State<BillPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("账单标题"),
      ),
      body: Text("账单页面"),
    );
  }
}
