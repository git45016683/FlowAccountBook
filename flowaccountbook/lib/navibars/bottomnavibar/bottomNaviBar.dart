/*
 * @Author: icemaple
 * @Date: 2021-05-12 09:44:12
 * @LastEditTime: 2021-05-12 10:54:24
 * @LastEditors: Please set LastEditors
 * @Description: In User Settings Edit
 * @FilePath: \FlowAccountBook\flowaccountbook\lib\navibars\bottomNaviBar.dart
 */

import 'package:flutter/material.dart';

var _unselectColor = Colors.grey;
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

class BottomNaviBar extends StatelessWidget {
  final int curIndex;
  final Function onMyTab;

  BottomNaviBar({Key key, this.curIndex, this.onMyTab}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BottomNavigationBar(
      onTap: onMyTab,
      currentIndex: curIndex,
      selectedItemColor: _selectColor,
      unselectedItemColor: _unselectColor,
      selectedFontSize: 10.0,
      unselectedFontSize: 10.0,
      showUnselectedLabels: true,
      items: createBottomNaviBarItem(curIndex),
    );
  }
}

List<BottomNavigationBarItem> createBottomNaviBarItem(curIndex) {
  List<BottomNavigationBarItem> itemList = List();

  int _index = 0;
  imageUrlMap.forEach((key, value) {
    var item = BottomNavigationBarItem(
      icon: Image(
        width: _selectIconSize,
        height: _selectIconSize,
        fit: BoxFit.cover,
        image: AssetImage(
          // imageUrlMap["我"][0],
          _index == curIndex ? imageUrlMap[key][1] : imageUrlMap[key][0],
        ),
      ),
      label: key,
    );

    itemList.add(item);
    _index++;
  });

  return itemList;
}
