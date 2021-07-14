

import 'package:erp_flutter/gnr/gnrFuntion.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class Home extends StatefulWidget {
  @override
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<Home> {
  @override
  Widget build(BuildContext context) {
    return Container(
      child: Scaffold(
        body: Directionality(
          textDirection: TextDirection.rtl,
          child: Column(
            children: <Widget>[
              Container(
                  alignment: Alignment.bottomRight,
                  margin: EdgeInsets.only(top: 30.0),
                  padding: EdgeInsets.only(right: 15.0),
                  child: Text(
                    "توصيل الطلب إلى",
                    style: TextStyle(color: Colors.grey,fontFamily: MyFont),
                  )),
              Row(
                children: <Widget>[
                  Container(
                      margin: EdgeInsets.only(top: 10.0),
                      padding: EdgeInsets.only(right: 15.0),
                      child: Text(
                        "موقع العميل",
                        style: TextStyle(
                            fontWeight: FontWeight.bold, fontSize: 20.0,fontFamily: MyFont),
                      )),
                  IconButton(
                      icon: Icon(
                        Icons.arrow_drop_down,
                        color: Colors.red,
                      ),
                      onPressed: () {}),
                ],
              ),
              new Container(
                child: Row(
                  children: <Widget>[
                    Expanded(
                      child: new Container(
                        decoration: BoxDecoration(
                            color: Colors.grey,
                            borderRadius: BorderRadius.circular(20.0)),
                        child: Row(
                          children: <Widget>[
                            new Icon(Icons.search),
                            new TextFormField(
                              decoration: InputDecoration(hintText: "Search"),
                            ),
                          ],
                        ),
                      ),
                    ),
                    new Icon(Icons.menu)
                  ],
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
