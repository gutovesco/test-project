
import 'package:flutter/material.dart';

class SecondPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      /*appBar: AppBar(
        backgroundColor: Colors.grey[300],
        leading: IconButton(
        icon: Icon(Icons.arrow_back),
        color: Colors.black,
        )
      ),*/
      backgroundColor: Colors.grey[300],
          body: Container(
            child: SingleChildScrollView(
      child: Column(children: <Widget>[
        Container(
          width: MediaQuery.of(context).size.width,
          height: MediaQuery.of(context).size.height / 4.5,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              Spacer(),

              Center(
                  child: Text(
                    'BadRuim',
                    textAlign: TextAlign.center,
                    style: TextStyle(
                        color: Colors.black,
                        fontSize: 26,
                        fontFamily: "Quicksand-Bold"),
                  ),
              ),
            ],
          ),
        ),
        SizedBox(height: 150),

        Container(
          child: Align(
            alignment: Alignment.center,
            child: Text('Qual o ramo da sua empresa?'),
          ),
        ),

        Container(
                width: MediaQuery.of(context).size.width / 1.2,
                height: 45,
                margin: EdgeInsets.only(top: 12),
                padding:
                    EdgeInsets.only(top: 4, left: 16, right: 16, bottom: 4),
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.all(Radius.circular(50)),
                    color: Colors.white,
                    boxShadow: [
                      BoxShadow(
                       color: Colors.grey[600],
                       offset: Offset(1.0,1.0),
                       blurRadius: 10.0,
                       spreadRadius: 1.0
                     ),
                     BoxShadow(
                       color: Colors.white,
                       offset: Offset(-4.0,-4.0),
                       blurRadius: 15.0,
                       spreadRadius: 1.0
                     ),
                    ]
                    
                    ),
                child: DropdownButton<String>(
                          items: <String>['Produtos Digitais', 'Comércio', 'C', 'D'].map((String value) {
                          return new DropdownMenuItem<String>(
                          value: value,
                          child: new Text(value),
                           );
                          }).toList(),
                          onChanged: (_) {},
                  )
              ),
               Container(
                 width: 50,
                height: 100,
                 decoration: BoxDecoration(
                   color: Colors.grey[400],
                   shape: BoxShape.circle,
                   boxShadow: [
                     BoxShadow(
                       color: Colors.grey[600],
                       offset: Offset(1.0,1.0),
                       blurRadius: 15.0,
                       spreadRadius: 1.0
                     ),
                     BoxShadow(
                       color: Colors.white,
                       offset: Offset(-4.0,-4.0),
                       blurRadius: 15.0,
                       spreadRadius: 1.0
                     ),
                   ],

                   gradient: LinearGradient(
                     begin: Alignment.topLeft,
                     end: Alignment.bottomRight,
                     colors: [
                       Colors.grey[200],
                       Colors.grey[300],
                       Colors.grey[400],
                       Colors.grey[500],
                     ],
                     stops: [
                       0.1,
                       0.3,
                       0.8,
                       0.9,
                     ]
                   )
                 ),
                 child: Padding(
              padding: EdgeInsets.all(20),
              child: Row(
                children: <Widget>[
                  Expanded(
                    child: GestureDetector(
                      onTap: () {}),
                   
                 ),


               /*FlatButton(
                 hoverColor: Colors.amber,
                 color: Colors.amberAccent,
                        child: Text(
                          'Próximo'.toUpperCase(),
                          style: TextStyle(
                              color: Colors.black,
                              fontWeight: FontWeight.bold,
                              fontFamily: "Quicksand"),
                        ),
                        onPressed: () {
                          Navigator.pop(context);
                        })*/

            ])))]))));}}