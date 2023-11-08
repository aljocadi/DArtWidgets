import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

class MyContainer extends StatelessWidget{
  
  
  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.white,
      alignment: Alignment.center,
      child: DefaultTextStyle(
        style: TextStyle(),
        child: SizedBox(
          width: 300,
          height: 500,
          child: Container(
            
            width: 200,
            height: 200,
            alignment: Alignment.center,
            color: Colors.red,
            //margen, mirar los diferentes tipos de EdgeInsets
            padding: EdgeInsets.only(
              left:20,
              top:15,
              bottom: 30,
              right: 15
              ),
            child: Text(
              "Jose Rojo",
              style:TextStyle(
                color: Colors.black,
              )
              ),
          ),
        ),
      ),
    );
  }
}