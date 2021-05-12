/*
 * @Author: your name
 * @Date: 2021-05-12 00:35:16
 * @LastEditTime: 2021-05-12 15:51:30
 * @LastEditors: Please set LastEditors
 * @Description: In User Settings Edit
 * @FilePath: \FlowAccountBook\flowaccountbook\lib\main.dart
 */

import 'package:flowaccountbook/pages/Statistics/Statistics.dart';
import 'package:flowaccountbook/pages/addassets/addassets.dart';
import 'package:flowaccountbook/pages/bill/bill.dart';
import 'package:flowaccountbook/pages/input/input.dart';
import 'package:flowaccountbook/pages/invest/invest.dart';
import 'package:flowaccountbook/pages/me/me.dart';
import 'package:flowaccountbook/pages/wallet/wallet.dart';
import 'package:flutter/material.dart';
import './pages/startup/startup.dart';

main(List<String> args) {
  return runApp(FAbook());
}

class FAbook extends StatefulWidget {
  @override
  _FAbookState createState() => _FAbookState();
}

class _FAbookState extends State<FAbook> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      // 路由默认路径设置, 默认为'/'
      initialRoute: '/home',
      routes: {
        // '/' 路由默认根路径
        '/home': (BuildContext context) {
          return StartUpPage();
        },
        '/bill': (BuildContext context) {
          return BillPage();
        },
        '/statistics': (BuildContext context) {
          return StatisticsPage();
        },
        '/invest': (BuildContext context) {
          return InvestPage();
        },
        '/me': (BuildContext context) {
          return MePage();
        },
        '/input': (BuildContext context) {
          return InputPage();
        },
        '/wallet': (BuildContext context) {
          return WalletPages();
        },
        '/addassets': (BuildContext context) {
          return AddAssetsPage();
        },
      },
    );
  }
}
