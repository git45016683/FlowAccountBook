import 'package:flutter/material.dart';

main(List<String> args) {
  return runApp(FAbook());
}

var _unselectColor = Colors.blueGrey;
var _selectColor = Colors.red;
var _selectIconSize = 28.0;

Map<String, List<String>> imageUrlMap = {
  "首页": [
    "assets/images/ic_home_nav_property.png",
    "assets/images/ic_home_nav_property_pressed.png"
  ],
  "账单": [
    "assets/images/ic_home_nav_bill.png",
    "assets/images/ic_home_nav_bill_pressed.png"
  ],
  "报表": [
    "assets/images/ic_home_nav_chart.png",
    "assets/images/ic_home_nav_chart_pressed.png"
  ],
  "赚钱": [
    "assets/images/ic_home_nav_finance.png",
    "assets/images/ic_home_nav_finance_pressed.png"
  ],
  "我": [
    "assets/images/ic_home_nav_me.png",
    "assets/images/ic_home_nav_me_pressed.png"
  ],
};

List test = [
  Text("首页的页面"),
  Text("账单的页面"),
  Text("报表的页面"),
  Text("赚钱的页面"),
  Text("我的页面")
];

class FAbook extends StatefulWidget {
  @override
  _FAbookState createState() => _FAbookState();
}

class _FAbookState extends State<FAbook> {
  int _currentIndex = 0;
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        home: Scaffold(
      appBar: AppBar(
        title: Text("我的记账app"),
      ),
      body: Container(
        child: test[_currentIndex],
      ),
      bottomNavigationBar: BottomNavigationBar(
        onTap: (int index) {
          print(index);
          setState(() {
            _currentIndex = index;
          });
        },
        currentIndex: _currentIndex,
        selectedItemColor: _selectColor,
        unselectedItemColor: _unselectColor,
        selectedFontSize: 10.0,
        unselectedFontSize: 10.0,
        unselectedLabelStyle: TextStyle(
          color: _unselectColor,
        ),
        items: <BottomNavigationBarItem>[
          BottomNavigationBarItem(
            icon: Image(
              width: _selectIconSize,
              height: _selectIconSize,
              fit: BoxFit.cover,
              image: AssetImage(
                imageUrlMap["首页"][0],
              ),
            ),
            label: "首页",
          ),
          BottomNavigationBarItem(
            icon: Image(
              width: _selectIconSize,
              height: _selectIconSize,
              fit: BoxFit.cover,
              image: AssetImage(
                imageUrlMap["账单"][0],
              ),
            ),
            label: "账单",
          ),
          BottomNavigationBarItem(
            icon: Image(
              width: _selectIconSize,
              height: _selectIconSize,
              fit: BoxFit.cover,
              image: AssetImage(
                imageUrlMap["报表"][0],
              ),
            ),
            label: "报表",
          ),
          BottomNavigationBarItem(
            icon: Image(
              width: _selectIconSize,
              height: _selectIconSize,
              fit: BoxFit.cover,
              image: AssetImage(
                imageUrlMap["赚钱"][0],
              ),
            ),
            label: "赚钱",
          ),
          BottomNavigationBarItem(
            icon: Image(
              width: _selectIconSize,
              height: _selectIconSize,
              fit: BoxFit.cover,
              image: AssetImage(
                imageUrlMap["我"][0],
              ),
            ),
            label: "我",
          ),
        ],
      ),
    ));
  }
}
