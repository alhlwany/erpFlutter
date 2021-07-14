import 'package:erp_flutter/gnr/gnrFuntion.dart';
import 'package:flutter/material.dart';

import 'login.dart';


class Register extends StatefulWidget {
  @override
  _RegisterState createState() => _RegisterState();
}

class _RegisterState extends State<Register> {
  @override
  Widget build(BuildContext context) {
    double mywidth = MediaQuery.of(context).size.width;

    return Padding(
      padding:  EdgeInsets.fromLTRB(mywidth*0.1,0.0,mywidth*0.1,0.0),
      child: Scaffold(
          backgroundColor: Colors.grey[100],
          appBar: AppBar(
            backgroundColor: Colors.transparent,
            elevation: 0.0,
            leading: IconButton(
                icon: Icon(
                  Icons.arrow_back_ios,
                  color: Colors.black,
                ),
                onPressed: () => Navigator.of(context).pop()),
          ),
          body: Directionality(
            textDirection: TextDirection.rtl,
            child: Container(
              margin: EdgeInsets.all(10.0),
              child: Column(
                children: <Widget>[
                  Expanded(
                      child: Form(
                        child: ListView(
                          children: <Widget>[
                            Container(
                              child: Text(
                                "انشاء حساب ",
                                style: TextStyle(fontSize: 25.0, color: Colors.red,fontFamily: 'MR_AY'),
                              ),
                            ),
                            Container(
                              margin: EdgeInsets.only(bottom: 30.0),
                              child: Text(
                                "جديد ",
                                style: TextStyle(fontSize: 25.0, color: Colors.red,fontFamily: 'MR_AY'),
                              ),
                            ),
                            Container(
                              margin: EdgeInsets.only(bottom: 10.0),
                              padding: EdgeInsets.only(left: 20.0, right: 20.0),
                              decoration: BoxDecoration(
                                  color: Colors.white,
                                  borderRadius: BorderRadius.circular(25.0)),
                              child: TextFormField(
                                decoration: InputDecoration(
                                    hintText: "الاسم الكامل",hintStyle: TextStyle(fontFamily: 'MR_AY'),
                                    border: InputBorder.none),
                                validator: (String value) {
                                  if (value.isEmpty || value.length < 1) {
                                    return "الرجاء ادخال الاسم الكامل";
                                  }
                                },
                              ),
                            ),
                            Container(
                              margin: EdgeInsets.only(bottom: 10.0),
                              padding: EdgeInsets.only(left: 20.0, right: 20.0),
                              decoration: BoxDecoration(
                                  color: Colors.white,
                                  borderRadius: BorderRadius.circular(25.0)),
                              child: TextFormField(
                                decoration: InputDecoration(
                                    hintText: "البريد الالكتروني",hintStyle: TextStyle(fontFamily: 'MR_AY'),
                                    border: InputBorder.none),
                                validator: (String value) {
                                  if (value.isEmpty ||
                                      value.indexOf(".") == -1 ||
                                      value.indexOf("@") == -1) {
                                    return "الرجاء ادخال البريد الالكتروني";
                                  }
                                },
                              ),
                            ),
                            Container(
                              margin: EdgeInsets.only(bottom: 10.0),
                              padding: EdgeInsets.only(left: 20.0, right: 20.0),
                              decoration: BoxDecoration(
                                  color: Colors.white,
                                  borderRadius: BorderRadius.circular(25.0)),
                              child: TextFormField(
                                obscureText: true,
                                decoration: InputDecoration(
                                    hintText: "كلمة المرور",hintStyle: TextStyle(fontFamily: 'MR_AY'),
                                    border: InputBorder.none),
                                validator: (String value) {
                                  if (value.isEmpty || value.length < 6) {
                                    return "الرجاء ادخال كلمة المرور";
                                  }
                                },
                              ),
                            ),
                            Container(
                              margin: EdgeInsets.only(bottom: 10.0),
                              padding: EdgeInsets.only(left: 20.0, right: 20.0),
                              decoration: BoxDecoration(
                                  color: Colors.white,
                                  borderRadius: BorderRadius.circular(25.0)),
                              child: TextFormField(
                                keyboardType: TextInputType.number,
                                decoration: InputDecoration(
                                    hintText: "رقم الهاتف",
                                    hintStyle: TextStyle(fontFamily: 'MR_AY'),border: InputBorder.none),
                                validator: (String value) {
                                  if (value.isEmpty || value.length < 5) {
                                    return "الرجاء ادخال رقم الهاتف";
                                  }
                                },
                              ),
                            ),
                            MaterialButton(
                                onPressed: () {},
                                child: Container(
                                  alignment: Alignment.center,
                                  height: 40.0,
                                  width: MediaQuery.of(context).size.width,
                                  child: Text(
                                    "تسجيل",
                                    style: TextStyle(
                                        color: Colors.white, fontSize: 20.0,fontFamily: 'MR_AY'),
                                  ),
                                  margin: EdgeInsets.only(bottom: 10.0, top: 30.0),
                                  padding: EdgeInsets.all(2.0),
                                  decoration: BoxDecoration(
                                      color: Colors.red,
                                      borderRadius: BorderRadius.circular(25.0)),
                                )),
                            Container(
                              margin: EdgeInsets.only(top: 10.0),
                              alignment: Alignment.bottomCenter,
                              child: Text(
                                  "عند الضغط على الشروط والاحكام انت توافق على قوانين التطبيق",style: TextStyle(
                                  color: primaryColor, fontSize: 10.0,fontFamily: 'MR_AY')),
                            )
                          ],
                        ),
                      )),
                  Container(
                    alignment: Alignment.center,
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: <Widget>[
                        Text(
                          "اذا لديك حساب سجل الدخول ؟",
                          style: TextStyle(color: Colors.black, fontSize: 16.0,fontFamily: 'MR_AY'),
                        ),
                        Padding(padding: EdgeInsets.all(10.0)),
                        GestureDetector(
                          onTap: () {
                            Navigator.push(context,
                                MaterialPageRoute(builder: (context) => Login()));
                          },
                          child: Text("دخول",
                              style:
                              TextStyle(color: Colors.red, fontSize: 16.0,fontFamily: 'MR_AY')),
                        )
                      ],
                    ),
                  )
                ],
              ),
            ),
          )),
    );
  }
}
