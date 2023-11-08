

import 'package:flutter/material.dart';

class MiColumna1 extends StatelessWidget{
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
            //LA columna es una agrupación de widgets, los hijos se disponen en una lista
            child: Column(
          children:  [
            //primer elemento un texto, no sale con el subrayado amarillo porque definimos
            //la columna dentro de un DefaultTextStyle
            Text("Hola"),
            //Segundo elemento un texto con colores personalizados y tamaño propio
            Text(
              "Mundo",
              style: TextStyle(
                color: Colors.blue,
                fontSize: 25,
                fontWeight: FontWeight.bold,

              ),
              ),
              //Tercer item del Column, un contenedor con tamaño de ancho y color
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


