

import 'package:flutter/material.dart';

class MyColumn extends StatelessWidget{
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
              

              children:  [
                
                  Expanded(
                    //el parametro flex de expanded nos fijara la proporcion a los demas
                    //expanded que pueda haber
                    child: Container(
                      height: 100,
                      color: Colors.pinkAccent,
                    ),
                  ),
                  //utilizar sizedbox para obtener la separacion
                     
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


