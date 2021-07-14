import 'package:erp_flutter/app/tips/tips.dart';
import 'package:erp_flutter/gnr/gnrFuntion.dart';
import 'package:flutter/material.dart';


class GetStart extends StatefulWidget {
  @override
  _GetStartState createState() => _GetStartState();
}

class _GetStartState extends State<GetStart> {
  @override
  Widget build(BuildContext context) {
    double myheight = MediaQuery.of(context).size.height / 3;
    double mywidth = MediaQuery.of(context).size.width;
    return Padding(

      padding:  EdgeInsets.fromLTRB(mywidth*0.1,0.0,mywidth*0.1,0.0),
      child: Scaffold(
        body: new Container(

            child: Column(
              children: <Widget>[
              FractionallySizedBox(
              widthFactor: 0.6,
                //heightFactor: 0.3,
              child:
                new Container(
                  height: myheight * 2,
                  decoration: BoxDecoration(
                    //border: Border.all(color: yellowColor2,width: 5,),borderRadius: BorderRadius.circular(50),
                      //color: Colors.white,
                      image: DecorationImage(
                          image: AssetImage("images/food2.png"), fit: BoxFit.fill)
                  ),
                ),
              ),
                new Container(
                  height: myheight,
                  padding: EdgeInsets.all(35.0),
                  decoration: BoxDecoration(
                      color: primaryColor,
                      boxShadow: [
                        BoxShadow(
                            color: Colors.grey.withOpacity(0.5),
                            spreadRadius: 5,
                            blurRadius: 7,
                            offset: Offset(0, 3))
                      ],
                      borderRadius: BorderRadius.only(
                          topLeft: Radius.circular(20),
                          topRight: Radius.circular(20))),
                  child: ListView(
                    children: <Widget>[
                      Column(
                        textDirection: TextDirection.rtl,
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: <Widget>[
                          Text(
                            "اشهى المأكولات",
                            textAlign: TextAlign.right,
                            style: TextStyle(
                                color: Colors.white,
                                fontSize: 20.0,
                                fontWeight: FontWeight.bold,
                                fontFamily: MyFont),
                          ),
                          Text(
                              "افضل المأكولات تجدونها في مطعمنا العديد من المأكولات لدينا",
                              textAlign: TextAlign.right,
                              style: TextStyle(
                                color: Colors.white,
                                fontSize: 16.0,
                                  fontFamily: MyFont)),
                          Padding(
                            padding: EdgeInsets.only(top: 35.0),
                            child: GestureDetector(
                              onTap: () {
                                Navigator.push(context,
                                    MaterialPageRoute(builder: (context) {
                                      return Tips();
                                    }));
                              },
                              child: Container(
                                  padding: EdgeInsets.only(
                                      left: 30.0, right: 30.0, top: 5.0, bottom: 5.0),
                                  decoration: BoxDecoration(
                                      color: Colors.white,
                                      borderRadius: BorderRadius.circular(20.0)),
                                  child: Text(
                                    "ابدأ من هنا",
                                    style: TextStyle(fontSize: 20.0,fontFamily: MyFont),
                                  )),
                            ),
                          )
                        ],
                      )
                    ],
                  ),
                )
              ],
            )),
      ),
    );
  }
}

