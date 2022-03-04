import 'package:flutter/material.dart';

class DetallePage extends StatefulWidget {
  DetallePage({Key? key}) : super(key: key);

  @override
  _DetallePageState createState() => _DetallePageState();
}

class _DetallePageState extends State<DetallePage> {
 int _currentIndex = 0;
  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
      appBar: AppBar(
        title: Text('Detalle'),
      ),
      body: Center(
        child: Container(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Image(image: AssetImage('assets/img/papa.png'),height: 300,width: 300,),
              Text("Papa libra",style: TextStyle(fontSize: 25, fontWeight: FontWeight.bold),),
              Text("\$0.60",style: TextStyle(fontSize: 25, fontWeight: FontWeight.bold),),
              _bottonAgregar()
            ],
          ),
        ),
      ),
      bottomNavigationBar: _bottomNavigatorBar(context),
    ));
  }

  Widget _bottonAgregar() {
    return StreamBuilder(
        builder: (BuildContext context, AsyncSnapshot snapshot) {
      return ElevatedButton(
        child: Container(
            padding: EdgeInsets.symmetric(horizontal: 75.0, vertical: 15.0),
            child: Text('Agregar a la orden', style: TextStyle(fontWeight: FontWeight.bold, fontSize: 16.0),)),
        onPressed: () {
          Navigator.pushNamed(context, 'inicio');
        },
      );
    });
  }

  BottomNavigationBar _bottomNavigatorBar(BuildContext context) {
    return BottomNavigationBar(
            currentIndex: _currentIndex,
            items: [
              BottomNavigationBarItem(
                icon: Icon(Icons.person),
                label: "Perfil",
                backgroundColor: Colors.blue,
                
              ),
              BottomNavigationBarItem(
                icon: Icon(Icons.home),
                label: "Inicio",
                backgroundColor: Colors.blue
              ),
              BottomNavigationBarItem(
                icon: Icon(Icons.info),
                label: "Info.",
                backgroundColor: Colors.blue
              )
            ],
            onTap: (index){
              setState(() {
                _currentIndex = index;
                switch(index){
                  case 0:
                    Navigator.pushNamed(context, 'usuario');
                  break;
                  case 1:
                    Navigator.pushNamed(context, 'inicio');
                  break;
                  case 2:
                    Navigator.pushNamed(context, 'info');
                  break;
                }
              });
            },
          );
  }
}