import 'package:flutter/material.dart';

class Resultado extends StatefulWidget {
  @override
  _ResultadoState createState() => _ResultadoState();

  int result = 0;
  String moeda = "cara";

  Resultado(int res){
    this.result = res;
    if(result == 0){
      moeda = "cara";
    }else{
      moeda = "coroa";
    }

  }
}

class _ResultadoState extends State<Resultado> {

  @override
  Widget build(BuildContext context) {
    return Scaffold(

      body: Container(
//              color: Color.fromRGBO(82, 178, 121,100),
        color: Color(0xff61bd8c), // 0xff  + hexadecimal (#52b279)
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: <Widget>[
             Text(
                 widget.moeda,
               textAlign: TextAlign.center,
               style: TextStyle(
                 fontSize: 50,
                 color:Colors.white,
               )
             ),
           TweenAnimationBuilder(
               tween: Tween<double>(begin: 100, end: 300),
               duration: Duration(seconds: 1),
               curve: Curves.bounceInOut,
               builder: (BuildContext context, double medida, Widget widget){
                 return Container(
                   height: medida,
                   width: medida,
                   child: Image.asset("imagens/moeda_"+ this.widget.moeda +".png") ,
                 );
               }
           ),

            Padding(
                padding: EdgeInsets.only(top: 15),
                child: GestureDetector(
                  child: Image.asset("imagens/botao_voltar.png"),
                  onTap: (){
                    Navigator.pop(context);
                  },
                )
            )
          ],

        ),
      ),
    );


  }


}
