import 'package:flutter/material.dart';

class HomePageTemp extends StatelessWidget {

  final opciones =['Uno','Dos','Tres','Cuatro','Cinco'];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title:Text("Componentes Temp"),
      ),
      body: ListView(
        children:  _crearItemsCorta(),
      ),
    );
  }

  List<Widget> _crearItem(){
      List<Widget> lista = List<Widget>();
      for (String opt in opciones) {
        final tempWidget = ListTile(
          title: Text(opt),
        );
        lista..add(tempWidget)
             ..add(Divider());
      }
    return lista;
  }

  List<Widget> _crearItemsCorta(){
     return opciones.map((item){
          return Column(
            children: <Widget>[
              ListTile(
                title: Text(item),
                subtitle: Text('Cualquier cosa'),
                leading: Icon(Icons.account_circle),
                trailing: Icon(Icons.arrow_forward_ios),
                onTap: (){},
              ),
              Divider()
            ]
          );
      }).toList();
  }
}