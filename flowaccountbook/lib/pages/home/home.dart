/*
 * @Author: icemaple
 * @Date: 2021-05-12 09:02:25
 * @LastEditTime: 2021-05-12 14:15:23
 * @LastEditors: Please set LastEditors
 * @Description: In User Settings Edit
 * @FilePath: \FlowAccountBook\flowaccountbook\lib\pages\home\home.dart
 */

import 'package:flutter/material.dart';

class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}

var _netAssets = 66666.6;
var _allAssets = 99999.9;
var _allLiabilites = 44444.4;
var _topFontColor = Colors.white60;

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // appBar: AppBar(
      //   title: Text("首页标题"),
      // ),
      body: Column(
        children: [
          Stack(
            children: <Widget>[
              Positioned(
                top: 0.0,
                left: 0.0,
                right: 0.0,
                child: Container(
                  height: 160.0,
                  child: Image.asset(
                    "assets/images/ic_home_top_bg.png",
                    fit: BoxFit.cover,
                  ),
                ),
              ),
              Padding(
                padding: EdgeInsets.only(
                    top: 50.0, left: 20.0, right: 20.0, bottom: 3.0),
                child: Column(
                  children: [
                    Container(
                      width: double.infinity, // 跟随父最大
                      child: Text(
                        "我的净资产 (元)",
                        style: TextStyle(
                          color: _topFontColor,
                        ),
                      ),
                    ),
                    SizedBox(
                      height: 6.0,
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: [
                        Container(
                          child: Text(
                            "￥$_netAssets",
                            style: TextStyle(
                              fontSize: 30.0,
                              fontWeight: FontWeight.bold,
                              color: _topFontColor,
                            ),
                            textAlign: TextAlign.left,
                          ),
                        ),
                        SizedBox(
                          width: 200.0,
                        ),
                        Container(
                          child: Image.asset(
                            "assets/images/ic_eye_on.png",
                            fit: BoxFit.cover,
                            width: 18.0,
                            height: 18.0,
                          ),
                        ),
                      ],
                    ),
                    SizedBox(
                      height: 6.0,
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: [
                        Container(
                          child: Text(
                            "总资产 ￥$_allAssets",
                            style: TextStyle(
                              color: _topFontColor,
                            ),
                          ),
                        ),
                        SizedBox(
                          width: 50.0,
                        ),
                        Container(
                          child: Text(
                            "总负债 ￥$_allLiabilites",
                            style: TextStyle(
                              color: _topFontColor,
                            ),
                          ),
                        ),
                      ],
                    ),
                  ],
                ),
              ),
            ],
          ),
          SizedBox(
            height: 16.0,
          ),
          Container(
            child: ButtonBar(
              // ButtonBar
              alignment: MainAxisAlignment.center,
              children: [
                ElevatedButton(
                  child: Text("记一笔"),
                  onPressed: () {
                    print("记一笔点下");
                  },
                ),
                ElevatedButton(
                  child: Text("添加资产"),
                  onPressed: () {
                    print("添加资产点下");
                  },
                ),
              ],
            ),
          ),
          // SizedBox(
          //   height: 3.0,
          // ),
          Container(
            child: Expanded(
              child: ListView(
                children: <Widget>[
                  ListTile(
                    leading: Icon(Icons.cast),
                    title: Text(
                      "现金钱包                               ￥9999999.99",
                      maxLines: 1,
                    ),
                    onTap: () {
                      print("即将进入 现金钱包");
                    },
                  ),
                  ListTile(
                    leading: Icon(Icons.palette),
                    title: Text(
                      "支付宝钱包: xx                     ￥8888888888.99",
                      maxLines: 1,
                    ),
                    onTap: () {
                      print("即将进入 支付宝钱包: xx");
                    },
                  ),
                  ListTile(
                    leading: Icon(Icons.palette),
                    title: Text(
                      "支付宝钱包: vvvv                 ￥77777777.99",
                      maxLines: 1,
                    ),
                    onTap: () {
                      print("即将进入 支付宝钱包: vvvv");
                    },
                  ),
                  ListTile(
                    leading: Icon(Icons.note),
                    title: Text(
                      "微信钱包: xx                         ￥66666666.99",
                      maxLines: 1,
                      overflow: TextOverflow.ellipsis,
                    ),
                    onTap: () {
                      print("即将进入 微信钱包: xx");
                    },
                  ),
                  ListTile(
                    leading: Icon(Icons.note),
                    title: Text(
                      "微信钱包: vvvv                      ￥55555.99",
                      maxLines: 1,
                    ),
                    onTap: () {
                      print("即将进入 微信钱包: vvvv");
                    },
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
