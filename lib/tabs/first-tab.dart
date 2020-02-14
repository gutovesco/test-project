import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:slimy_card/slimy_card.dart';

class First extends StatefulWidget {
  @override
  _First createState() => _First();
}
class _First extends State<First> {

  final List<String> grade = ["Ensino basico", "Ensino Médio", 'Ensino Superior'];
  String selectedgrade = "Ensino Superior";

  final List<String> conhecimento = ["Finanças", "Comercial", 'Tecnologia'];
  String selectedconhecimento = "Tecnologia";

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
                      height: ScreenUtil().setHeight(27),
                    ),
                    SizedBox(
                      height: ScreenUtil().setHeight(20),
                    ),
                  
                    SizedBox(
                      height: ScreenUtil().setHeight(07),
                    ),
                    TextField(
                      style: TextStyle(color: Color.fromRGBO(78, 165, 4, 100)),
                      decoration: InputDecoration(
                          focusedBorder: UnderlineInputBorder(
                            borderSide: BorderSide(
                                color: Color.fromRGBO(78, 165, 4, 100),
                                width: 2),
                          ),
                          labelText: "E-mail",
                          labelStyle: TextStyle(
                              color: Color.fromRGBO(78, 165, 4, 100),
                              fontSize: 16)),
                    ),

                          TextField(
                      style: TextStyle(color: Color.fromRGBO(78, 165, 4, 100)),
                      decoration: InputDecoration(
                          focusedBorder: UnderlineInputBorder(
                            borderSide: BorderSide(
                                color: Color.fromRGBO(78, 165, 4, 100),
                                width: 2),
                          ),
                          labelText: "Senha",
                          labelStyle: TextStyle(
                              color: Color.fromRGBO(78, 165, 4, 100),
                              fontSize: 16)),
                    ),

                                        TextField(
                      style: TextStyle(color: Color.fromRGBO(78, 165, 4, 100)),
                      decoration: InputDecoration(
                          focusedBorder: UnderlineInputBorder(
                            borderSide: BorderSide(
                                color: Color.fromRGBO(78, 165, 4, 100),
                                width: 2),
                          ),
                          labelText: "Confirme a senha",
                          labelStyle: TextStyle(
                              color: Color.fromRGBO(78, 165, 4, 100),
                              fontSize: 16)),
                    ),


       DropdownButton<String>(
        iconSize: 24,
        elevation: 6,
        style: TextStyle(color: Color.fromRGBO(78, 165, 4, 100)),
        value: selectedgrade,
        onChanged: (value) {
          setState(() {
            selectedgrade = value;
          });
        },
        items: grade.map<DropdownMenuItem<String>>((value) {
          return DropdownMenuItem(
            child: Text(value),
            value: value,
          );
        }).toList(),
      ),

       DropdownButton<String>(
        iconSize: 24,
        elevation: 6,
        style: TextStyle(color: Color.fromRGBO(78, 165, 4, 100)),
        value: selectedconhecimento,
        onChanged: (value) {
          setState(() {
            selectedconhecimento = value;
          });
        },
        items: conhecimento.map<DropdownMenuItem<String>>((value) {
          return DropdownMenuItem(
            child: Text(value),
            value: value,
          );
        }).toList(),
      ),

      SizedBox(height: 40),
      GestureDetector(
                      onTap: () {
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
                          "Submeter",
                          style: TextStyle(
                              color: Color.fromRGBO(78, 165, 4, 100),
                              fontSize: 16),
                        ),
                      ),
                    ),

                    ])))));}}