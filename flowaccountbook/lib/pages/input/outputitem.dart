/*
 * @Author: icemaple
 * @Date: 2021-05-13 04:29:50
 * @LastEditTime: 2021-05-13 06:46:10
 * @LastEditors: Please set LastEditors
 * @Description: In User Settings Edit
 * @FilePath: \FlowAccountBook\flowaccountbook\lib\pages\input\outputitem.dart
 */

import 'package:flutter/material.dart';

class OutputItemPage extends StatefulWidget {
  @override
  _OutputItemPageState createState() => _OutputItemPageState();
}

class _OutputItemPageState extends State<OutputItemPage> {
  TextEditingController _controller;

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    _controller = new TextEditingController();
  }

  @override
  void dispose() {
    // TODO: implement dispose
    super.dispose();
    _controller.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: <Widget>[
          Container(
            alignment: Alignment(0, 0),
            width: double.infinity,
            height: 50.0,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                Container(
                  width: 64.0,
                  child: Text("记账钱包"),
                ),
                SizedBox(
                  width: 4.0,
                ),
                VerticalDivider(
                  color: Colors.grey,
                  width: 1,
                ),
                SizedBox(
                  width: 4.0,
                ),
                IconButton(
                  icon: Icon(Icons.money),
                  onPressed: () {
                    print("更改资产符号");
                  },
                ),
                SizedBox(
                  width: 4.0,
                ),
                Container(
                  child: Expanded(
                    child: TextField(
                      controller: _controller,
                      textAlign: TextAlign.end,
                      autofocus: true,
                      keyboardType: TextInputType.number,
                      decoration: InputDecoration(
                        border: InputBorder.none,
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ),
          SizedBox(
            height: 3.0,
          ),
          Container(
            child: Column(
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: [
                    IconButton(
                      icon: Icon(Icons.food_bank),
                      onPressed: () {},
                    ),
                    IconButton(
                      icon: Icon(Icons.food_bank),
                      onPressed: () {},
                    ),
                    IconButton(
                      icon: Icon(Icons.food_bank),
                      onPressed: () {},
                    ),
                    IconButton(
                      icon: Icon(Icons.food_bank),
                      onPressed: () {},
                    ),
                    IconButton(
                      icon: Icon(Icons.food_bank),
                      onPressed: () {},
                    ),
                    IconButton(
                      icon: Icon(Icons.food_bank),
                      onPressed: () {},
                    ),
                  ],
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: [
                    IconButton(
                      icon: Icon(Icons.food_bank),
                      onPressed: () {},
                    ),
                    IconButton(
                      icon: Icon(Icons.food_bank),
                      onPressed: () {},
                    ),
                    IconButton(
                      icon: Icon(Icons.food_bank),
                      onPressed: () {},
                    ),
                    IconButton(
                      icon: Icon(Icons.food_bank),
                      onPressed: () {},
                    ),
                    IconButton(
                      icon: Icon(Icons.food_bank),
                      onPressed: () {},
                    ),
                    IconButton(
                      icon: Icon(Icons.food_bank),
                      onPressed: () {},
                    ),
                  ],
                ),
              ],
            ),
          ),
          SizedBox(
            height: 3.0,
          ),
          Container(
            alignment: Alignment(0, 0),
            width: double.infinity,
            height: 50.0,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                IconButton(
                  icon: Icon(Icons.calendar_today),
                  onPressed: () {
                    print("更改日期");
                  },
                ),
                Container(
                  width: 64.0,
                  child: Text("今天"),
                ),
                SizedBox(
                  width: 8.0,
                ),
                Container(
                  child: Expanded(
                    child: TextField(
                      controller: _controller,
                      decoration: InputDecoration(
                        hintText: '请输入备注信息（最多140字）',
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ),
          Expanded(
            child: Row(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Container(
                  child: Checkbox(
                    value: false,
                    onChanged: (value) {
                      print("object");
                    },
                  ),
                  // Radio(
                  //   value: "可报销",
                  //   onChanged: (ss) {
                  //     print("object $ss");
                  //   },
                  //   groupValue: "可报销",
                  // ),
                ),
                Text("可报销"),
              ],
            ),
          ),
          Container(
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                TextButton(
                  onPressed: () {
                    print("再记一笔点下");
                  },
                  child: Text("再记一笔"),
                ),
                TextButton(
                  onPressed: () {
                    print("保存点下");
                  },
                  child: Text("保存"),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
