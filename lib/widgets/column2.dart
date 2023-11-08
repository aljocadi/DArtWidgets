

import 'package:flutter/material.dart';

class MiColumna2 extends StatelessWidget{
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
              //Con este parámetro evitamos que el column intente ocupar todo el espacio,
              //limitandolo unicamente al tamaño de los elementos que contiene
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
                    color: Colors.pinkAccent,
                  )


              ],
            ),
          ),
        ),
      ),
    );
  }

}


