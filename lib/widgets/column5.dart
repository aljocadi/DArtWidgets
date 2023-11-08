

import 'package:flutter/material.dart';

class MiColumna5 extends StatelessWidget{
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
              
              //existe otra posibilidad de conseguir espaciado, es usando el widget spacer
              //solo es posible utilizarlo en column o row
              //constituira un espaciador sin tamaño prefijado que ocupará el espacio intermedio
              //obligando a los extremos hacia arriba y abajo
              children:  [
                //elemento a la parte superior                
                Text("Hello"),
                Text(
                  "Mundo",
                  style: TextStyle(
                    color: Colors.blue,
                    fontSize: 25,
                    fontWeight: FontWeight.bold,
          
                  ),
                  ),
                  Spacer(),
                //elemento a la parte inferior
                  Container(
                    height: 100,
                    //para establecer separacion con el segundo container
                    margin: EdgeInsets.only(bottom: 20),
                    color: Colors.pinkAccent,
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


