

import 'package:flutter/material.dart';

class MiSingleChildScrollView extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      //este widget tiene como mision evitar los errores de overflow de nuestro 
      //widget column, si probais quitando el widget, vereis el error
      //debemos tener en cuenta que este widget solo lo podemos poner si el contenedor
      //padre tiene dimensiones fijas, no podemos ponerlo dentro de un column
      //para meterlo dentro del un column mirad la MiSingleChildScrollView2
      body: SingleChildScrollView(
        child: Column(
          //para probarlo crearemos 18 contenedores, para generarlo utilizaremos
          //el metodo generate de List
          children: List.generate(18,
           (index) => Container(
             color: Colors.primaries[index],
             height: 100,
           )),
        ),
      ),
    );
  }

}