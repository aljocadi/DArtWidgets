

import 'package:flutter/material.dart';

class MiSingleChildScrollView3 extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      //este widget tiene como mision evitar los errores de overflow de nuestro 
      //widget column, si probais quitando el widget, vereis el error
      //debemos tener en cuenta que este widget solo lo podemos poner si el contenedor
      //padre tiene dimensiones fijas, no podemos ponerlo dentro de un column
      
      body: SafeArea(
        //que no tenga en cuenta la parte inferior, que llegue hasta el borde
        bottom: false,
        child: Column(
          children: [
            Text("Hola"),
            //tambien lo podemos aplicar en filas
            SingleChildScrollView(
              scrollDirection: Axis.horizontal,
              child: Row(
                children: List.generate(18,
                     (index) => Container(
                       color: Colors.primaries[index],
                       height: 100,
                       width: 100,
                     )),
              ),
            ),
            //Esta sería otra alternativa, aqui el espacio lo calcula en base a lo que dejan
            //los bloques de tamaño fijo
            Expanded(
              child: SingleChildScrollView(
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
            ),
          ],
        ),
      ),
    );
  }

}