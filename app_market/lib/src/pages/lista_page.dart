import 'package:flutter/material.dart';

class ListaPage extends StatefulWidget {
  ListaPage({Key? key}) : super(key: key);

  @override
  _ListaPageState createState() => _ListaPageState();
}

class _ListaPageState extends State<ListaPage> {
  int _currentIndex = 0;
  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
      appBar: AppBar(
        title: Text('Información'),
      ),
      bottomNavigationBar: _bottomNavigatorBar(context),
    ));
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