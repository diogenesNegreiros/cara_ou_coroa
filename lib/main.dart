import 'package:flutter/material.dart';
import 'dart:math';

import 'Resultado.dart';

void main() => runApp(MaterialApp(home: MyApp()));

     class MyApp extends StatefulWidget {
       @override
       _MyAppState createState() => _MyAppState();
     }

     class _MyAppState extends State<MyApp> {

       @override
       Widget build(BuildContext context) {
         return Scaffold(
           appBar: AppBar(
             title: Text("Cara ou Coroa?"),
             backgroundColor: Colors.green[400]
           ),
            body: Container(
//              color: Color.fromRGBO(82, 178, 121,100),
              color: Color(0xff61bd8c), // 0xff  + hexadecimal (#52b279)
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.stretch,
                children: <Widget>[
                   Image.asset("imagens/logo.png"),
                  Padding(
                      padding: EdgeInsets.only(top: 15),
                  child: GestureDetector(
                    child: Image.asset("imagens/botao_jogar.png"),
                    onTap: (){
                      int num = Random().nextInt(2);


                      Navigator.push(context, MaterialPageRoute(builder: (context) => Resultado(num)));
                    },
                  )
                  )
                ],
              ),
            ),
         );
       }
     }
