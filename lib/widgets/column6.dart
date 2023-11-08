

import 'package:flutter/material.dart';

class MiColumna6 extends StatelessWidget{
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
              
              //en contenedor expanded nos ayudará a que nuestro contenedor ocupe el espacio disponible
              //si utilizamos varios estos se repartirán proporcionalmente, a menos que utilicemos el parametro
              //flex, que permitirá variar su proporcionalidad. Para saber cuanto ocuparán debemos sumar
              //todos los flex de los expand y nuestro contenedor ocupará su valor flex/sumaDeTodosLosFlex
              children:  [
                Expanded(
                    //el parametro flex de expanded nos fijara la proporcion a los demas
                    //en este caso ocupará 2/3 del espacio que queda
                    flex: 2,
                    child: Container(
                      height: 100,
                      color: Colors.pinkAccent,
                    ),
                  ),
                  Expanded(
                    //el parametro flex de expanded nos fijara la proporcion a los demas
                    //en este caso ocupará 1/3 del espacio que queda
                    flex: 1,
                    child: Container(
                      height: 100,
                      color: Colors.green,
                    ),
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


