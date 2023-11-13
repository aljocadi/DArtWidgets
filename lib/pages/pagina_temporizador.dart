
import 'dart:async';

import 'package:flutter/material.dart';

class PaginaTemporizador extends StatefulWidget {
  const PaginaTemporizador({super.key});

  @override
  State<PaginaTemporizador> createState() => _PaginaTemporizadorState();
}

class _PaginaTemporizadorState extends State<PaginaTemporizador> {
  int _tiempo=10;
  //creamos una variable para nuestro temporizador
  Timer? _temporizador;
  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    //lanzamos un temporizador, que saltara cada segundo
    _temporizador=Timer.periodic(Duration(seconds: 1), 
    (timer) {
      _tiempo--;
      //renderizamos de nuevo el widget
      setState(() {});
      //detenemos el teporizador al llegar a 0
      if(_tiempo==0)
      {
        timer.cancel();
      }
     });
  }

  //esta sobreescritura nos permite saber el widget que nos ha llamado y el que nos llamó antes
  //oldWidget contendrá el anterior widget que nos llamó y widget contendrá el que nos acaba de llamar
  //muy util para saber de donde venimos y a donde debemos ir
  @override
  void didUpdateWidget (covariant PaginaTemporizador oldWidget) {
    super.didUpdateWidget(oldWidget);
    
  }

  //liberamos los recursos. En nuestro ejemplo el temporizador se detiene
  //si este widget estuviese contenido en otro, que llegado un momento decida
  //deteenr a este, ejecutará dispose para liberar recursos.
  //Debemos tenerlo en cuenta en e los StatefulWidget para no empeorar el rendimiento
  @override
  void dispose() {
    _temporizador?.cancel();
    super.dispose();
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Text(
          "$_tiempo",
          style: TextStyle(
            fontSize: 40),
        ),
      ),

    );
  }
}