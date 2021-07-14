import 'package:erp_flutter/app/user/login.dart';
import 'package:erp_flutter/app/user/register.dart';
import 'package:erp_flutter/gnr/gnrFuntion.dart';
import 'package:flutter/material.dart';
import 'package:page_indicator/page_indicator.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class Tips extends StatefulWidget {
  @override
  _TipsState createState() => _TipsState();
}

class _TipsState extends State<Tips> {
  var myarr = [
    {
      "title": "تبحث عن الدقة ؟",
      "info": "الدقة .. بداية الجودة فنحن نُصر على تقديم الدقة قبل أى شىء",
      "image": "images/tip4.jpg"
    },
    {
      "title": "تهتم بالتفاصيل ؟",
      "info": "التفاصيل تحتاج إلى الدقة فكل عنصر لدينا يتم تحليلة لأصغر تفاصيل ممكنة",
      "image": "images/tip5.jpg"
    },
    {
      "title": "تريد الإبتكار ؟",
      "info": "ينبع الإبتكـــار بتنوع التفاصيل العديده .. فثق إننا نسعى دائما للابتكار",
      "image": "images/tip6.jpg"
    }
  ];
  @override
  Widget build(BuildContext context) {
    double myheight = MediaQuery.of(context).size.height / 6;
    double mywidth = MediaQuery.of(context).size.width;

    return Padding(
      padding:  EdgeInsets.fromLTRB(mywidth*0.1,0.0,mywidth*0.1,0.0),
      child: Scaffold(
        body: new Container(
            child: Column(
              children: <Widget>[
                new Container(
                  alignment: Alignment.bottomRight,
                  padding: EdgeInsets.only(top: 40.0, right: 30.0),
                  child: GestureDetector(
                    child:
                    new GestureDetector(
                      onTap: () {
                      Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => Login()
                          ));
                      },
                      child: new  Text("دخول", style:
                      TextStyle(fontSize: 22.0, color: Colors.red,fontFamily: MyFont),),
                    ),

                  ),
                ),
                new Container(
                  height: myheight * 4,
                  child: new  PageIndicatorContainer(
                    shape: IndicatorShape.circle(),
                    length: myarr.length,
                    align: IndicatorAlign.bottom,
                    indicatorColor: Colors.white,
                    indicatorSelectorColor: Colors.red,


                    child: PageView.builder(

                        physics: AlwaysScrollableScrollPhysics(),
                        scrollDirection: Axis.horizontal,
                        itemCount: myarr.length,
                        itemBuilder: (BuildContext context, i) {
                          return SingleTips(
                              title: myarr[i]["title"].toString(),
                              info: myarr[i]["info"].toString(),
                              image: myarr[i]["image"].toString());
                        },),
                  ),
                ),
                Expanded(
                  child: new Container(
                    padding: EdgeInsets.all(10.0),
                    child: ListView(
                      children: <Widget>[
                        Column(
                          textDirection: TextDirection.rtl,
                          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                          crossAxisAlignment: CrossAxisAlignment.center,
                          children: <Widget>[
                            MaterialButton(
                              onPressed: () {
                                Navigator.push(
                                    context,
                                    MaterialPageRoute(
                                        builder: (context) => Register()
                                    ));
                              },
                              child: Container(
                                alignment: Alignment.center,
                                width: MediaQuery.of(context).size.width,
                                height: 40.0,
                                decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(15.0),
                                  color: Colors.red,
                                ),
                                child: Text(
                                  "انشاء حساب",
                                  style:
                                  TextStyle(fontSize: 20.0, color: Colors.white,fontFamily: MyFont),

                                ),
                              ),
                            ),
                            MaterialButton(
                              onPressed: () {},
                              child: Container(
                                alignment: Alignment.center,
                                width: MediaQuery.of(context).size.width,
                                height: 40.0,
                                decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(15.0),
                                  color: Colors.grey[300],
                                ),
                                child: Row(
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  children: <Widget>[
                                    FaIcon(
                                      FontAwesomeIcons.facebookF,
                                      size: 15.0,
                                    ),
                                    Text(
                                      "متابعة باستخدام الفيس بوك",
                                      style: TextStyle(
                                          fontSize: 20.0, color: Colors.black,fontFamily: MyFont),
                                    ),
                                  ],
                                ),
                              ),
                            )
                          ],
                        )
                      ],
                    ),
                  ),
                )
              ],
            )),
      ),
    );
  }
}

class SingleTips extends StatelessWidget {
  final String title;
  final String info;
  final String image;

  SingleTips({ this.title,  this.info,  this.image});
  @override
  Widget build(BuildContext context) {
    return Column(
      children: <Widget>[
        Expanded(
            child: Container(
              alignment: Alignment.center,
              child: Image.asset(
                image,
                fit: BoxFit.cover,
              ),
            )),
        new Padding(
            padding: EdgeInsets.all(5),
            child: Text(
              title,
              style: TextStyle(
                  color: Colors.red,
                  fontSize: 21.0,
                  fontWeight: FontWeight.bold, fontFamily: MyFont),
            )),
        new Padding(
            padding: EdgeInsets.only(bottom: 70.0),
            child: Text(
              info,
              style: TextStyle(
                  color: Colors.grey,
                  fontSize: 16.0,
                  fontWeight: FontWeight.bold, fontFamily: MyFont),
            ))
      ],
    );
  }
}
