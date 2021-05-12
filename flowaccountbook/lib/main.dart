/*
 * @Author: your name
 * @Date: 2021-05-12 00:35:16
 * @LastEditTime: 2021-05-12 19:41:48
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
      // routes: {
      //   // '/' 路由默认根路径
      // },
      onGenerateRoute: onGenerateRoute,
    );
  }
}

var routes = {
  '/home': (BuildContext context) => StartUpPage(),
  '/bill': (BuildContext context) => BillPage(),
  '/statistics': (BuildContext context) => StatisticsPage(),
  '/invest': (BuildContext context) => InvestPage(),
  '/me': (BuildContext context) => MePage(),
  '/input': (BuildContext context) => InputPage(),
  '/wallet': (BuildContext context, {arguments}) =>
      WalletPages(name: arguments),
  '/addassets': (BuildContext context) => AddAssetsPage(),
};

var onGenerateRoute = (RouteSettings setting) {
  print("$setting----");

  final String name = setting.name;
  final Function pageContentBuilder =
      routes[name]; // ≈ (BuildContext context) => MePage()

  if (pageContentBuilder != null) {
    if (setting.arguments != null) {
      // 命名路由 有传参
      final Route route = MaterialPageRoute(
        builder: (context) =>
            pageContentBuilder(context, arguments: setting.arguments),
      );
      return route;
    } else {
      // 无传参
      final Route route = MaterialPageRoute(
        builder: (context) => pageContentBuilder(context),
      );
      return route;
    }
  }
};
