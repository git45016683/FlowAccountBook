/*
 * @Author: icemaple
 * @Date: 2021-05-12 14:25:29
 * @LastEditTime: 2021-05-12 15:08:14
 * @LastEditors: Please set LastEditors
 * @Description: In User Settings Edit
 * @FilePath: \FlowAccountBook\flowaccountbook\lib\pages\input\input.dart
 */

import 'package:flutter/material.dart';

class InputPage extends StatefulWidget {
  @override
  _InputPageState createState() => _InputPageState();
}

class _InputPageState extends State<InputPage> {
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
        // title: TabBar(
        //   // controller: ,
        //   tabs: [
        //     Tab(
        //       text: "流入",
        //     ),
        //     Tab(
        //       text: "流出",
        //     ),
        //     Tab(
        //       text: "内部转账",
        //     ),
        //   ],
        // ),
      ),
      body: Text("记记记记记……帐啊"),
    );
  }
}
