import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_app/utils/toastdart.dart';


class MyInfo extends StatefulWidget {
  @override
  createState() => new MyInfoState();
}

class MyInfoState extends State<MyInfo> {
  static const double IMAGE_ICON_WIDTH = 30.0;
  static const double ARROW_ICON_WIDTH = 16.0;

  var inons = [];
  var titleTextStyle = new TextStyle(fontSize: 16.0);
  var title = ["用户指南", "地图设置", "路网数据", "数据备份", "项目数据更新", "关于系统", "退出登录"];
  var images = [
    "images/one.png",
    "images/two.png",
    "images/three.png",
    "images/four.png",
    "images/five.png",
    "images/six.png",
    "images/senven.png",
  ];
  var rightIcon = new Image.asset(
    "images/icon_right.png",
    width: IMAGE_ICON_WIDTH,
    height: ARROW_ICON_WIDTH,
  );

  MyInfoState() {
    for (int i = 0; i < images.length; i++) {
      inons.add(setImages(images[i]));
    }
  }

  //设置iamge的位置
  Widget setImages(path) {
    return new Padding(
        padding: const EdgeInsets.fromLTRB(0.0, 0.0, 10.0, 0.0),
        child: new Image.asset(path,
            width: IMAGE_ICON_WIDTH, height: ARROW_ICON_WIDTH));
  }

  @override
  Widget build(BuildContext context) {
    var listview = new ListView.builder(
        itemCount: title.length , itemBuilder: (context, i) => renderRow(i));
    return listview;
  }

  renderRow(int i) {
      String itemName =  title[i];
      var itemCount =  new Padding(
        padding: const EdgeInsets.fromLTRB(25.0, 25.0, 25.0, 25.0),
        child: new Row(
          children: <Widget>[
            inons[i],
            new Expanded(
                child: new Text(
                  itemName,
                  style: titleTextStyle,
                )),
            rightIcon
          ],
        ),
      );
      return new InkWell(
        child: itemCount,
        onTap: (){
          //toast
          showShort(itemName);
//          Navigator.of(context).push(new MaterialPageRoute(
//              builder: (context)=> new MainActivity()));
        },
      );
  }
}
