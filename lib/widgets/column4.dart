

import 'package:flutter/material.dart';

class MiColumna4 extends StatelessWidget{
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
              
              //fija la separación entre los elementos separando los elementos entre
              //la parte superior e inferior
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              //en este caso en lugar de colocar los hijos en un único column
              //el column padre contiene 2 unicos elementos, uno irá a la parte 
              //superior y otro a la inferior
              //cada elemento es a su vez otro column
              children:  [
                //elemento a la parte superior                
                Column(
                  children: [
                    Text("Hello"),
                    Text(
                      "Mundo",
                      style: TextStyle(
                        color: Colors.blue,
                        fontSize: 25,
                        fontWeight: FontWeight.bold,
          
                      ),),
                  ],
                ),
                //elemento a la parte inferior
                  Column(
                    children: [
                      Container(
                        height: 100,
                        //para establecer separacion con el segundo container
                        margin: EdgeInsets.only(bottom: 20),
                        color: Colors.pinkAccent,
                      ),                     
                      Container(
                        height: 100,
                        color: Colors.blue,
                      ),
                    ],
                  )


              ],
            ),
          ),
        ),
      ),
    );
  }

}


