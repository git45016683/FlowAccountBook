/*
 * @Author: icemaple
 * @Date: 2021-05-12 14:32:16
 * @LastEditTime: 2021-05-12 15:24:14
 * @LastEditors: Please set LastEditors
 * @Description: In User Settings Edit
 * @FilePath: \FlowAccountBook\flowaccountbook\lib\pages\addassets\addassets.dart
 */
import 'package:flutter/material.dart';

class AddAssetsPage extends StatefulWidget {
  @override
  _AddAssetsPageState createState() => _AddAssetsPageState();
}

class _AddAssetsPageState extends State<AddAssetsPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: IconButton(
          icon: Icon(Icons.close),
          onPressed: () {
            Navigator.pop(context);
          },
        ),
        title: Text("添加资产账户"),
      ),
      body: ListView(
        children: [
          ListTile(
            leading: Icon(Icons.add),
            title: Text("现金"),
          ),
          ListTile(
            leading: Icon(Icons.add),
            title: Text("支付宝"),
          ),
          ListTile(
            leading: Icon(Icons.add),
            title: Text("微信"),
          ),
          ListTile(
            leading: Icon(Icons.add),
            title: Text("信用卡"),
          ),
          ListTile(
            leading: Icon(Icons.add),
            title: Text("期货"),
          ),
          ListTile(
            leading: Icon(Icons.add),
            title: Text("股票"),
          ),
          ListTile(
            leading: Icon(Icons.add),
            title: Text("基金"),
          ),
        ],
      ),
    );
  }
}
