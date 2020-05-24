import 'package:flutter/material.dart';

class SliderPage extends StatefulWidget {

  @override
  _SliderPageState createState() => _SliderPageState();
}

class _SliderPageState extends State<SliderPage> {
  double _valorSlider = 100.0;
  bool _bloqCheck =false;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
       appBar: AppBar(
         title: Text('Slider'),
       ),
       body: Container(
         padding: EdgeInsets.only(top:50.0),
         child: Column(
           children: <Widget>[
             _crearSlider(),
             _crearCheckBox(),
             _crearSwitch(),
             Expanded(
               child: _crearImagen()
             ),
           ],
         ),
       ),       
    );
  }

  Widget _crearCheckBox(){
    //return Checkbox(
      //value: _bloqCheck, 
      //onChanged: (valor){
        //setState(() {
          //_bloqCheck = valor;
        //});
      //}
    //);

    return CheckboxListTile(
      title: Text('Bloquear Slide'),
      value: _bloqCheck,
      onChanged: (valor){
        setState(() {
          _bloqCheck = valor;
        });
      }
    );
  }

  Widget _crearSwitch (){
    return SwitchListTile(
      title: Text('Bloquear Slide'),
      value: _bloqCheck,
      onChanged: (valor){
        setState(() {
          _bloqCheck = valor;
        });
      }
    );
  }

  Widget _crearSlider(){
    return Slider(
      activeColor: Colors.indigoAccent,
      label: 'Tamaño de la imagen',
      //divisions: 20,
      value: _valorSlider,
      min: 10.0,
      max: 400.0, 
      onChanged: (_bloqCheck) ? null : (val){
        setState(() {
          _valorSlider = val;
        });
      }
    );
  }

   Widget _crearImagen(){
     return Image(
       image: NetworkImage('https://prod-ripcut-delivery.disney-plus.net/v1/variant/disney/3413CBA1B21F0A3952E07A7D1AF5D4483E18B680B8087FEFE4A25F1572161BF8/scale?aspectRatio=1.78&format=jpeg'),
        width: _valorSlider,
        fit: BoxFit.contain,
     );
   }
}