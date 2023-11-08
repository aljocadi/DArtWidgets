import 'package:flutter/material.dart';

class MyText extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    return Center(
        child: DefaultTextStyle(
          style: TextStyle(),
          child: Text(
          "Lorem Ipsum es simplemente el texto "
          "de relleno de las imprentas y "
          "archivos de texto. Lorem Ipsum ha ",
          //el numero maximo de lineas
          maxLines: 2,
          //este parametro varia la forma de 
          //indicarme que el texto no se ve completo
          overflow: TextOverflow.ellipsis,
          style: TextStyle(
            fontSize: 20,
            color: Colors.white,
          ),
          ),
          textAlign: TextAlign.start,
          ),
      );
  }

}