import 'package:custom_switch/custom_switch.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:Business_Monsters/register_pages/register_user.dart';
import 'package:Business_Monsters/home.dart';

Color palleteBlue = Color(0xff010a43);
Color palleteLightPink = Color(0xffffc2c2);
Color palleteMediumPink = Color(0xffff9d9d);
Color palletePink = Color(0xffff2e63);

class LoginScreen extends StatefulWidget {
  LoginScreen({Key key}) : super(key: key);

  @override
  _LoginScreenState createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  bool status = true;

  @override
  Widget build(BuildContext context) {
    ScreenUtil.init(context,
        width: 1080, height: 1860, allowFontScaling: false);
    return Scaffold(
        backgroundColor: Color(0xFFF1F3F6),
        body: SafeArea(
          child: SingleChildScrollView(
            child: Container(
                margin: EdgeInsets.symmetric(
                    horizontal: ScreenUtil().setWidth(120)),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: <Widget>[
                    SizedBox(
                      height: ScreenUtil().setHeight(200),
                    ),
                    Center(
                      child: Text(
                        "Business Monsters",
                        textAlign: TextAlign.center,
                        style: TextStyle(
                          fontFamily: 'LuckiestGuy',
                            color: palleteMediumPink,
                            fontSize: 36,
                            fontWeight: FontWeight.bold,
                            shadows: [
                            Shadow( // bottomLeft
                            offset: Offset(-2.5, -2.5),
                        color: Colors.white,
                      ),
                      Shadow( // bottomRight
                          offset: Offset(-2.5, -2.5),
                          color: Colors.white
                      ),
                      Shadow( // topRight
                          offset: Offset(2.5, 2.5),
                          color: Colors.white
                      ),
                      Shadow( // topLeft
                          offset: Offset(-2.5, 2.5),
                          color: Colors.white
                      ),
                      ],
                        ),
                      ),
                    ),
                    SizedBox(
                      height: ScreenUtil().setHeight(170),
                    ),
                    SizedBox(
                      height: ScreenUtil().setHeight(20),
                    ),
                    Stack(
                      children: <Widget>[
                        TextField(
                          style:
                              TextStyle(color: palleteMediumPink),
                          decoration: InputDecoration(
                              focusedBorder: UnderlineInputBorder(
                                borderSide: BorderSide(
                                    color: palleteMediumPink,
                                    width: 2),
                              ),
                              labelText: "Usuário",
                              labelStyle: TextStyle(
                                fontFamily: 'LuckiestGuy',
                                  color: palleteMediumPink,
                                  fontSize: 14)),
                        ),
                      ],
                    ),
                    SizedBox(
                      height: ScreenUtil().setHeight(100),
                    ),
                    TextField(
                      style: TextStyle(color: palleteMediumPink),
                      decoration: InputDecoration(
                          focusedBorder: UnderlineInputBorder(
                            borderSide: BorderSide(
                                color: palleteMediumPink,
                                width: 2),
                          ),
                          labelText: "Senha",
                          labelStyle: TextStyle(
                            fontFamily: 'LuckiestGuy',
                              color: palleteMediumPink,
                              fontSize: 14)),
                    ),
                    SizedBox(
                      height: ScreenUtil().setHeight(70),
                    ),
                    Row(
                      children: <Widget>[
                        Container(
                          decoration: BoxDecoration(
                              ),
                          child: CustomSwitch(
                            activeColor: palleteMediumPink,
                            value: status,
                            onChanged: (value) {
                              setState(() {
                                status = value;
                              });
                            },
                          ),
                        ),
                        SizedBox(
                          width: 10,
                        ),
                        Text(
                          "Lembrar dados",
                          style:
                              TextStyle(color: palleteLightPink, fontSize: 14, fontFamily: 'LuckiestGuy',),
                        ),
                        Spacer(),
                      ],
                    ),
                    SizedBox(
                      height: ScreenUtil().setHeight(130),
                    ),
                    GestureDetector(
                      onTap: () {
                        Navigator.push(
                            context,
                            new MaterialPageRoute(
                                builder: (BuildContext context) => new Home()));
                      },
                      child: Container(
                        width: double.infinity,
                        alignment: Alignment.center,
                        height: ScreenUtil().setHeight(120),
                        margin: EdgeInsets.symmetric(vertical: 15),
                        decoration: BoxDecoration(
                            color: Color(0xFFF1F3F6),
                            borderRadius: BorderRadius.all(Radius.circular(10)),
                            boxShadow: [
                              BoxShadow(
                                  offset: Offset(10, 10),
                                  color: Color(0xFF4D70A6).withOpacity(0.2),
                                  blurRadius: 16),
                              BoxShadow(
                                  offset: Offset(-10, -10),
                                  color: Color.fromARGB(170, 255, 255, 255),
                                  blurRadius: 10),
                            ]),
                        child: Text(
                          "Login",
                          style: TextStyle(
                            fontFamily: 'LuckiestGuy',
                              color: palleteMediumPink,
                              fontSize: 16),
                        ),
                      ),
                    ),
                    
                     GestureDetector(
                      onTap: () {
                        Navigator.push(
                            context,
                            new MaterialPageRoute(
                                builder: (BuildContext context) => new SlimyCardPage2()));
                      },
                      child: Container(
                        width: double.infinity,
                        alignment: Alignment.center,
                        height: ScreenUtil().setHeight(120),
                        margin: EdgeInsets.symmetric(vertical: 15),
                        decoration: BoxDecoration(
                            color: Color(0xFFF1F3F6),
                            borderRadius: BorderRadius.all(Radius.circular(10)),
                            boxShadow: [
                              BoxShadow(
                                  offset: Offset(10, 10),
                                  color: Color(0xFF4D70A6).withOpacity(0.2),
                                  blurRadius: 16),
                              BoxShadow(
                                  offset: Offset(-10, -10),
                                  color: Color.fromARGB(170, 255, 255, 255),
                                  blurRadius: 10),
                            ]),
                        child: Text(
                          "Registrar",
                          style: TextStyle(
                            fontFamily: 'LuckiestGuy',
                              color: palleteMediumPink,
                              fontSize: 16),
                        ),
                      ),
                    ),
                  ],
                )),
          ),
        ));
  }
}
