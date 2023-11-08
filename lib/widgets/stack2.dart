import 'package:flutter/material.dart';

class MiStack2 extends StatelessWidget{
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
            child: Stack(
              alignment: Alignment.center,
              children: [
                Container(
                  width: 150,
                  height: 150,
                  color: Colors.green,
                ),
                //para colocar un elemento en una posicion en concreto
                //ignorando posicionaminetos de contenedores previos
                Positioned(
                  //si fijo los elementos top, left,rigth y bottom a 0 ocupara todo el espacio disponible
                  //al fijarlo, se hace sobre su antecesor no con respecto a la totalidad de la pantalla
                  top: 10,
                  left: 10,
                  //si pongo este ancho variara el ancho con respecto al hijo
                  width: 100,
                  child: Container(
                    //si no pongo ancho y alto el tamaño del contenedor se calculara dinamicamente
                    //en base a su contenido
                    //en este caso lo hemos puesto, pero el contendor anterior tenía un ancho mayor,
                    //por lo que al no tener una posicion prefijada (estar dentro de un center),
                    //su ancho lo fija el contenedor anterior, por eso es un rectangulo de 100x50
                    width: 50,
                    height: 50,
                    color: Colors.red,
                    //texto en el contendor sin ubicacion, asi que esta en topLeft del contenedor
                    child: Text("Rojo"),
                  ),
                ),
                //utilizamos un posicionamiento para poner casi fuera del area el logo de flutter.
                Positioned(
                  right: -50,
                  bottom: -30,
                  //carga del logo
                  child: FlutterLogo(
                  size: 100,
                  )
                  ),
                  //texto en la parte central en la zona superior al ser el ultimo elemento
                Text("Hola"),
                
                ],
              
            ),
          ),
        ),
      ),
    );
  }

}