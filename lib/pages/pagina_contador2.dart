import 'package:flutter/material.dart';


//este tipo de widgets, los Statefulwidgets son widgets con estado.
//los widgets vistos hasta ahora tienen un contenido de tipo final
//si lo hacemos cambiar, es porque volvemos a renderizar todo el widget
//si solo deseamos variar algo, normalmente asociado a una accion con
//un boton o un checkbox utilizaremos este tipo  de widgets.
//Se componen de dos clases, una para definir el widget y otra para los diferentes estados


class PaginaContador2 extends StatefulWidget {
    //en este ejemplo vamos a dar un valor inicial al contador.
    //definimos una variable para guardar ese valor y la iniciamos con el constructor del widget
    final int valorInicial;
    //podemos indicar que es required o darla un valor por defecto, en este caso hacemos lo ultimo
    const PaginaContador2({
      this.valorInicial=0
    });

  @override
  State<PaginaContador2> createState() => _PaginaContadorState();
}



class _PaginaContadorState extends State<PaginaContador2> {
  late int contador;

  //vamos a sobreescribir el estado inicial para cargar el vaor inicial del contador
  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    //cualquier clase que extienda de State puede utilizar la propiedad widget para acceder al 
    //widget vinculado al estado
    contador=widget.valorInicial;
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: Center(
        child: Text(
          "$contador",
          style: TextStyle(
              fontSize: 40,
          ),
          ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: (){
          contador++;
          //Si no marcamos el cambio de estado no hará nada
          //no es del todo cierto, con un reload veremos que la accion se tiene en cuenta.
          //Esta orden SetState es la encargada de actualizar.
          //Solamente debe haber una llamada a setState, cada llamada hace una renderizacion
          setState(() {
            
          });
        }
        ),
    );
  }
}