

import 'package:flutter/material.dart';
import 'package:widgets/widgets/listviewbuilder.dart';

class MiListView extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      //Su funcionamiento es una mezcla del singleChildSdrollView y un column, pero con menos codigo
      body: ListView(
        //esta orden hace que cuando hagamos drag en el listview (tambien funciona en SingleChildScrollview)
        //oculte el teclado del textfiled.
        keyboardDismissBehavior: ScrollViewKeyboardDismissBehavior.onDrag,
        //Es recomendable que no utilicemos children si nuestros elementos pasan de 100
        children: [
          //creamos un boton para navegar hasta listviewbuilder
          IconButton(
            onPressed: (){
              //indicamos la ruta a la que queremos llegar
              final destino=MaterialPageRoute(
                builder:(_)=>MiListViewBuilder() );
                //cargamos la ruta
              Navigator.push(context, destino);
            }, 
            //icono del boton
            icon: Icon(Icons.login)),
          TextField(),
          Text("Hola"),
          Container(
            height: 100,
            color: Colors.red,
          ),
          Container(
            height: 600,
            color: Colors.blue,
          ),
          Text("Hola"),
          Container(
            height: 600,
            color: Colors.yellow,
          ),
          SizedBox(
            height: 100,
            //En este caso haremos el ListView horizontal
            child: ListView(
              scrollDirection: Axis.horizontal,
              children: [
                Container(
                  width: 100,
                  color: Colors.red,
                ),
                Container(
                  width: 100,
                  color: Colors.yellow,
                ),
                Container(
                  width: 100,
                  color: Colors.red,
                ),
                Container(
                  width: 100,
                  color: Colors.orange,
                ),
                Container(
                  width: 100,
                  color: Colors.black,
                ),
                Container(
                  width: 100,
                  color: Colors.blue,
                ),
              ],
            ),
          )
        ],
      ),
    );
  }

}