/*
 * @Author: icemaple
 * @Date: 2021-05-12 14:19:44
 * @LastEditTime: 2021-05-12 15:28:21
 * @LastEditors: Please set LastEditors
 * @Description: In User Settings Edit
 * @FilePath: \FlowAccountBook\flowaccountbook\lib\pages\wallet\wallet.dart
 */

import 'package:flutter/material.dart';

class WalletPages extends StatefulWidget {
  final String name;

  WalletPages({Key key, this.name}) : super(key: key);

  @override
  _WalletPagesState createState() => _WalletPagesState(name: this.name);
}

class _WalletPagesState extends State<WalletPages> {
  final String name;

  _WalletPagesState({this.name});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: Text("资产详情"),
      ),
      body: Text(name + " 的钱包"),
    );
  }
}
