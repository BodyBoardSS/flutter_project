
import 'package:flutter/material.dart';

class HomePage extends StatelessWidget{
  final TextStyle estilo = TextStyle(fontSize: 25);
  final int conteo = 10;

    @override
    Widget build(BuildContext context) {
      return Scaffold(
        appBar: AppBar(
          title: Text('Mi primera App'),
        ),
        body: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              Text('Numero de clicks', style: estilo),
              Text('$conteo', style: estilo)
            ],
          ),
        ),
        floatingActionButton: FloatingActionButton(
          child: Icon(Icons.add),
          onPressed: (){
              //conteo ++;
          },
        ),
      );
    }
}