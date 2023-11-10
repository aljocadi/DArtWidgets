
import 'package:flutter/material.dart';

class MiSafeArea extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        width: double.infinity,
        height: double.infinity,
        color: Colors.grey,
        //este widget nos permitirá evitar las zonas correspondientes a altavoz, micro, camara, zona reloj
        child: SafeArea(
          child: Column(
            children: [
              Expanded(
                //este contenedor está solo para que se vea como la zona del safeArea ignora las zonas
                //criticas
                child: Container(
                  color: Colors.red,
                )),
              
            ]
            ),
        ),
      ),
    );
  }

}