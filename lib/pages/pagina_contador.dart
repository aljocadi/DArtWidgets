import 'package:flutter/material.dart';


//este tipo de widgets, los Statefulwidgets son widgets con estado.
//los widgets vistos hasta ahora tienen un contenido de tipo final
//si lo hacemos cambiar, es porque volvemos a renderizar todo el widget
//si solo deseamos variar algo, normalmente asociado a una accion con
//un boton o un checkbox utilizaremos este tipo  de widgets.
//Se componen de dos clases, una para definir el widget y otra para los diferentes estados


class PaginaContador extends StatefulWidget {
    const PaginaContador({super.key});

  @override
  State<PaginaContador> createState() => _PaginaContadorState();
}



class _PaginaContadorState extends State<PaginaContador> {
  int contador=0;
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