import 'package:flutter/material.dart';

class MiStack extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    return DefaultTextStyle(
      style: TextStyle(
        color: Colors.black,
      ),
      child: Container(
        color: Colors.white,
        child: Center(
          child: Container(
            color: Colors.grey,
            height: 400,
            width: 400,
            //Este widget coloca los elementos por capas
            //cuando lo ponemos dentro de otro contenedor se coloca con respecto al mas cercano
            //en nuestro caso lo coloca dentro de un contenedor gris de 400x400
            child: Stack(
              //Con la alineación decimos donde colocará los widgets interiores, en nuestro caso
              //en el centro
              alignment: Alignment.center,
              children: [
                //dentro tendremos un contendor pequeño de 150 cuadrado color verde
                Container(
                  width: 150,
                  height: 150,
                  color: Colors.green,
                ),
                //dentro tendremos un contendor pequeño de 50 cuadrado color rojo
                //el orden es indispensable, si los colocamos al revés el rojo no se verá pero
                //seguirá estando alli, pero tapado por el verde
                Container(
                  width: 50,
                  height: 50,
                  color: Colors.red,
                ),
                //el texto se colocará sobre el ultimo cuadrado.
                Text("Hola"),
                
                ],
              
            ),

          ),
        ),
      ),
    );
  }

}