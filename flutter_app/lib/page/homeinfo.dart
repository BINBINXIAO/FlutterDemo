import 'package:flutter/material.dart';
import 'package:flutter_app/utils/toastdart.dart';

class HomeInfo extends StatefulWidget {
  @override
  createState() => new HomeInfoState();
}

class HomeInfoState extends State<HomeInfo> {
  var title = ["项目信息", "农村公路建设统计报表", "路网结构改造统计报表"];

  @override
  Widget build(BuildContext context) {
    var listview = new ListView.builder(
        itemCount: title.length, itemBuilder: (context, i) => renderRow(i));
    return listview;
  }

  renderRow(int i) {
    if (i == 0) {
      var projectInfo = new Container(
//          color: const Color.fromRGBO(255, 255, 255, 255.0),
        decoration: new BoxDecoration(
          color: Colors.white,
        ),
        child: new Center(
          child: new Column(
            children: <Widget>[
              new Text(
                title[0],
                textAlign: TextAlign.left,
              ),
              new Container(
                color: const Color.fromRGBO(240, 248, 255, 200.0),
                child: new Row(
                  children: <Widget>[
                    new Expanded(
                        flex: 1,
                        child: new Container(
                          margin: const EdgeInsets.only(
                              top: 10.0, right: 5.0, left: 10.0, bottom: 10.0),
                          decoration: new BoxDecoration(
                              border: new Border.all(
                                  width: 1.0, color: Colors.black12),
                              borderRadius: const BorderRadius.all(
                                  const Radius.circular(10.0))),
                          height: 100.0,
                          child: new Center(
                            child: new Column(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: <Widget>[
                                new IconButton(
                                    icon: new Image.asset(
                                      "images/icon_way.png",
                                      width: 50.0,
                                      height: 50.0,
                                    ),
                                    onPressed: () {
                                      showShort("农村公路建设类项目");
                                    }),
                                new Center(child: new Text("农村公路建设类项目"))
                              ],
                            ),
                          ),
                        )),
                    new Expanded(
                        flex: 1,
                        child: new Container(
                          margin: const EdgeInsets.only(
                              top: 10.0, right: 10.0, left: 5.0, bottom: 10.0),
                          decoration: new BoxDecoration(
                              border: new Border.all(
                                  width: 1.0, color: Colors.black12),
                              borderRadius: const BorderRadius.all(
                                  const Radius.circular(10.0))),
                          height: 100.0,
                          child: new Center(
                              child: new Column(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: <Widget>[
                              new IconButton(
                                  icon: new Image.asset(
                                    "images/icon_reform.png",
                                    width: 50.0,
                                    height: 50.0,
                                  ),
                                  onPressed: () {
                                    showShort("农村公路建设类项目");
                                  }),
                              new Center(child: new Text("危桥改造类项目"))
                            ],
                          )),
                        ))
                  ],
                ),
              ),
              new Container(
                child: new Row(
                  children: <Widget>[
                    new Expanded(
                        flex: 1,
                        child: new Container(
                          margin: const EdgeInsets.only(
                              top: 0.0, right: 5.0, left: 10.0, bottom: 10.0),
                          decoration: new BoxDecoration(
                              border: new Border.all(
                                  width: 1.0, color: Colors.black12),
                              borderRadius: const BorderRadius.all(
                                  const Radius.circular(10.0))),
                          height: 100.0,
                          child: new Center(
                            child: new Column(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: <Widget>[
                                new IconButton(
                                    icon: new Image.asset(
                                      "images/icon_security.png",
                                      width: 50.0,
                                      height: 50.0,
                                    ),
                                    onPressed: () {
                                      showShort("县乡安防工程类项目");
                                    }),
                                new Center(child: new Text("县乡安防工程类项目"))
                              ],
                            ),
                          ),
                        )),
                    new Expanded(
                        flex: 1,
                        child: new Container(
                          margin: const EdgeInsets.only(
                              top: 0.0, right: 10.0, left: 5.0, bottom: 10.0),
                          decoration: new BoxDecoration(
                              border: new Border.all(
                                  width: 1.0, color: Colors.black12),
                              borderRadius: const BorderRadius.all(
                                  const Radius.circular(10.0))),
                          height: 100.0,
                          child: new Center(
                              child: new Column(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: <Widget>[
                              new IconButton(
                                  icon: new Image.asset(
                                    "images/icon_security_green.png",
                                    width: 50.0,
                                    height: 50.0,
                                  ),
                                  onPressed: () {
                                    showShort("村道安防工程类项目");
                                  }),
                              new Center(child: new Text("村道安防工程类项目"))
                            ],
                          )),
                        ))
                  ],
                ),
              ),
            ],
          ),
        ),
      );
      return new GestureDetector(
        child: projectInfo,
      );
    }

    new Container(
      child: new Text(title[i]),
    );

    var listCountItem = new Padding(
      padding: const EdgeInsets.fromLTRB(15.0, 10.0, 0.0, 10.0),
      child: new Column(
        children: <Widget>[
          new Container(
            child: new Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: <Widget>[
                new Text(title[i]),
                new Container(
                  height: 200.0,
                  child: new ListView(
                    children: <Widget>[
                      new ListTile(
                        leading: new Icon(Icons.map),
                        title: new Text('Maps'),
                      ),
                      new ListTile(
                        leading: new Icon(Icons.photo_album),
                        title: new Text('Album'),
                      ),
                      new ListTile(
                        leading: new Icon(Icons.phone),
                        title: new Text('Phone'),
                      ),
                    ],
                  ),
                )
              ],
            ),
          ),
//          new ListView(
//            children: <Widget>[
//              new ListTile(
//                title: new Text('123123'),
//              )
//            ],
//          )
        ],
      ),
    );

    return new InkWell(
      child: listCountItem,
      onTap: () {
        showShort("1111");
      },
    );
  }
}
