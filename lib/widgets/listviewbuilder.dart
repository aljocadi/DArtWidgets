
import 'package:flutter/material.dart';

class MiListViewBuilder extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      //si ponemos un AppBar vacio por defecto el pondrá el boton para volver en las paginas secundarias
        appBar: AppBar(),
        //Si quisiese tener muchos elementos utilizaría algo parecido a esto, pero 
        //tiene la pega de que se geenra la totalidad de los items, si fuesen muchos o complejos
        //podría afectar al rendimiento
        //para solventarlo utilizaremos ListView.builder
        // body: ListView(
        //   children: List.generate(
        //     1000, (index) => Container(
        //       height: 100,
        //       margin: EdgeInsets.all(5),
        //       color: Colors.blue,
        //     )),
        // ),
        //automaticamente solo renderiza los elementos que entran en pantalla
        body:ListView.builder(
          //funcion que devuelve un windget, index indica el elemnto que estamos renderizando
          itemBuilder: (context, index) {
            //si miramos el print, veremos que solo renderiza los elementos que entran en la pantalla
            //cuando movemos abajo, vemos que sigue generando elementos.
            print("Creado");
            return Container(
              height: 100,
              color: Colors.blue,
              margin: EdgeInsets.all(5),
              //si tuviese un List de texto, por aqui pondria un widget Text, referido a esa lista con el parametro index
              //para hacer la carga correcta ej. Text(lista[index])
            );
          },
          //tamaño de nuestra lista, si tuviese la lista en un List, pondria aqui la longitud
          itemCount: 100000,
        )

        //existe otra variante que es ListView.Separated
        //que nos permite meter un separador (cualquier widget) 
        //entre cada uno de los elementos
        //lo unico que debemos añadir es otra propiedad
        //separatorBuilder que espera el widget de separacion entre los elementos

    );
  }

}