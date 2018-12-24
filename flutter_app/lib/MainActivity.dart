import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_app/page/homeinfo.dart';
import 'package:flutter_app/page/myinfo.dart';

void main() => runApp(new MainActivity());

class MainActivity extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return new MaterialApp(
      title: 'Hello World',
      theme: new ThemeData(
        primaryColor: Colors.blue,
      ),
      home: new RandomWords(),
    );
  }
}

class RandomWordsState extends State<RandomWords> {
  int _tabIndex = 0; //默认当前页
//  static const double IMAGE_ICON_WIDTH = 30.0;
//  static const double ARROW_ICON_HEIGHT = 16.0;

  final normalTextColor = new TextStyle(color: const Color(0xff969696)); //默认的颜色
  final selectTextColor = new TextStyle(color: const Color(0xff63ca6c)); //选择的颜色

  var tabImage;
  var _body;
  var tabNameList = ['首页', '地图', '我的'];
  var titleNameList = ['江西省农村公路项目移动服务平台', '地图', '我的'];

//  var leftIcon;
//  RandomWordsState(){
//    leftIcon = setImages("images/icon_left.png");
//  }

  Image getImagePath(path) {
    //统一设置image属性
    return new Image.asset(
      path,
      width: 20.0,
      height: 20.0,
    );
  }

  void initData() {
    if (tabImage == null) {
      tabImage = [
        [
          getImagePath('images/activity_home_unchecked.png'),
          getImagePath('images/activity_home_checked.png')
        ],
        [
          getImagePath('images/activity_map_unchecked.png'),
          getImagePath('images/activity_map_checked.png')
        ],
        [
          getImagePath('images/activity_mine_unchecked.png'),
          getImagePath('images/activity_mine_checked.png')
        ],
      ];
    }

    _body = new IndexedStack(
      children: <Widget>[new HomeInfo(), new MyInfo(), new MyInfo()],
      index: _tabIndex,
    );
  }

  TextStyle getTabTextStyle(int curIndex) {
    if (curIndex == _tabIndex) {
      return selectTextColor;
    }
    return normalTextColor;
  }

  Text getTabTitle(int curIndex) {
    return new Text(tabNameList[curIndex], style: getTabTextStyle(curIndex));
  }

  Image getTabIcon(int curIndex) {
    if (curIndex == _tabIndex) {
      return tabImage[curIndex][1];
    }
    return tabImage[curIndex][0];
  }



  //设置iamge的位置
//  Widget setImages(path) {
//    return new Padding(
//        padding: const EdgeInsets.fromLTRB(0.0, 0.0, 10.0, 0.0),
//        child: new Image.asset(path,
//            width: IMAGE_ICON_WIDTH, height: ARROW_ICON_HEIGHT));
//  }

  @override
  Widget build(BuildContext context) {
    initData();
    return new MaterialApp(

      home: new Scaffold(
        appBar: new AppBar(
            title: new Center(
              child: new Text(titleNameList[_tabIndex],
                  style: new TextStyle(color: Colors.white)),
//              child: new Row(
//                children: <Widget>[
//                  leftIcon,
//                  new Text(tabNameList[_tabIndex],
//                      style: new TextStyle(color: Colors.white))
//                ],
//              ),
            ),
            iconTheme: new IconThemeData(color: Colors.white)),
        body: _body,
        bottomNavigationBar: new CupertinoTabBar(
          items: <BottomNavigationBarItem>[
            new BottomNavigationBarItem(
                icon: getTabIcon(0),
                title: getTabTitle(0)),
            new BottomNavigationBarItem(
                icon: getTabIcon(1),
                title: getTabTitle(1)),
            new BottomNavigationBarItem(
                icon: getTabIcon(2),
                title: getTabTitle(2)),
          ],
          currentIndex: _tabIndex,
          onTap: (index) {
            setState(() {
              _tabIndex = index;
            });
          },
        ),
      ),
    );
  }
}

class RandomWords extends StatefulWidget {
  @override
  createState() => new RandomWordsState();
}
