import 'package:flutter/material.dart';
class InfoPage extends StatefulWidget {
  InfoPage({Key? key}) : super(key: key);

  @override
  _InfoPageState createState() => _InfoPageState();
}

class _InfoPageState extends State<InfoPage> {
  int _currentIndex = 0;
  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
      appBar: AppBar(
        title: Text('Información'),
      ),
      body: Center(
        child: Column(
          children: [
            Card(
                shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(10)),
                margin: EdgeInsets.all(10),
                elevation: 10,
                child: Column(
                  children: <Widget>[
                    ListTile(
                      contentPadding: EdgeInsets.fromLTRB(15, 10, 25, 0),
                      title: Text('Acerca de'),
                      subtitle: Text(
                        'Somos la mejor tienda en linea con la más alta gama de productos para todas tus necesidades, tomando en cuenta como idea principal el ahorro de tus gastos.',
                        style: TextStyle(fontSize: 15),
                      ),
                      leading: Icon(Icons.info),
                    ),
                  ],
                ),
            ),
            Card(
                shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(10)),
                margin: EdgeInsets.all(10),
                elevation: 10,
                child: Column(
                  children: <Widget>[
                    ListTile(
                      contentPadding: EdgeInsets.fromLTRB(15, 10, 25, 0),
                      title: Text('Contacto'),
                      subtitle: Text(
                        'Teléfono: 2256-9125 \n Correo: supermall@gmail.com',
                        style: TextStyle(fontSize: 15),
                        ),
                      leading: Icon(Icons.phone),
                    ),
                  ],
                ),
            )
          ],
        ),
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

