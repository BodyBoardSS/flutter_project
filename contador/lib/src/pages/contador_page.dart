import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';

class ContadorPage  extends StatefulWidget {

  @override
  createState () => _ContadorPageState();
}

class _ContadorPageState extends State<ContadorPage>{
  final TextStyle _estilo = TextStyle(fontSize: 25);
  int _conteo = 0;
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
              Text('Numero de taps:', style: _estilo),
              Text('$_conteo', style: _estilo)
            ],
          ),
        ),
        floatingActionButton: _crearBotones()
      );
  }

  Widget _crearBotones(){
    return Row(
      mainAxisAlignment: MainAxisAlignment.end,
      children: <Widget>[
        SizedBox(width: 30),
        FloatingActionButton(child: Icon(Icons.exposure_zero), onPressed: _reset),
        Expanded(child: SizedBox(width: 5.0,)),
        FloatingActionButton(child: Icon(Icons.remove), onPressed: _restar),
        SizedBox(width: 5.0,),
        FloatingActionButton(child: Icon(Icons.add), onPressed: _sumar)
      ],
    );
  }

  void _sumar (){
    setState(() => _conteo++); 
  }

  void _restar (){
    setState(() => _conteo--); 
  }

  void _reset (){
    setState(() => _conteo = 0); 
  }
}