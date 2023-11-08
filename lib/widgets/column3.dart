

import 'package:flutter/material.dart';

class MiColumna3 extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    return DefaultTextStyle(
      style:TextStyle(color: Colors.black),
      child: Container(
        color: Colors.white,
        padding: EdgeInsets.symmetric(
          vertical: 55,
        ),
        child: Center(
          child: Container(
            color: Colors.grey,
            child: Column(
              mainAxisSize: MainAxisSize.min,
              children:  [
                Text("Hello"),
                Text(
                  "Mundo",
                  style: TextStyle(
                    color: Colors.blue,
                    fontSize: 25,
                    fontWeight: FontWeight.bold,
          
                  ),),
                  Container(
                    height: 100,
                    //para establecer separacion de 20 con la palabra Mundo
                    //y 30 con el contendor verde 
                    margin: EdgeInsets.only(top: 20,bottom: 30),
                    color: Colors.pinkAccent,
                  ),
                  Container(
                    height: 100,
                    color: Colors.green,
                  ),
                  //utilizar sizedbox para obtener la separacion, es un componente
                  //sin relleno pero con tamaño físico
                  SizedBox(
                    height: 100,
                  ),
                  Container(
                    height: 100,
                    color: Colors.blue,
                  )

              ],
            ),
          ),
        ),
      ),
    );
  }

}


