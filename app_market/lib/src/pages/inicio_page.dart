import 'package:flutter/material.dart';

class InicioPage extends StatefulWidget {
  InicioPage({Key? key}) : super(key: key);

  @override
  _InicioPageState createState() => _InicioPageState();
}

class _InicioPageState extends State<InicioPage> {
  int _currentIndex = 0;
  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
            appBar: AppBar(
              title: Text('Inicio'),
            ),
            body: GridView.count(
              mainAxisSpacing: 50.0,
              padding: EdgeInsets.symmetric(vertical: 35),
              crossAxisCount: 2,
              children: <Widget>[
                OpcionesCard(
                  child: ElevatedButton(
                    onPressed: () {
                      Navigator.pushNamed(context, 'productos');
                    },
                    child: Icon(
                      Icons.shopping_cart,
                      size: 75,
                    ),
                    style: ElevatedButton.styleFrom(
                        shape: CircleBorder(), padding: EdgeInsets.all(20)),
                  ),
                  text: "Productos",
                ),
                OpcionesCard(
                  child: ElevatedButton(
                    onPressed: () {
                      Navigator.pushNamed(context, 'lista');
                    },
                    child: Icon(
                      Icons.list,
                      size: 75,
                    ),
                    style: ElevatedButton.styleFrom(
                        shape: CircleBorder(), padding: EdgeInsets.all(20)),
                  ),
                  text: "Lista de compras",
                ),
                OpcionesCard(
                  child: ElevatedButton(
                    onPressed: () {
                      Navigator.pushNamed(context, 'oferta');
                    },
                    child: Icon(
                      Icons.local_offer,
                      size: 75,
                    ),
                    style: ElevatedButton.styleFrom(
                        shape: CircleBorder(), padding: EdgeInsets.all(20)),
                  ),
                  text: "Ofertas especiales",
                ),
                OpcionesCard(
                  child: ElevatedButton(
                    onPressed: () {
                      Navigator.pushNamed(context, 'usuario');
                    },
                    child: Icon(
                      Icons.person,
                      size: 75,
                    ),
                    style: ElevatedButton.styleFrom(
                        shape: CircleBorder(), padding: EdgeInsets.all(20)),
                  ),
                  text: "Usuario",
                ),
              ],
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

class OpcionesCard extends StatelessWidget {
  final Widget child;
  final String text;

  const OpcionesCard({Key? key, required this.child, required this.text})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Card(
      child: Padding(
        padding: const EdgeInsets.all(12.0),
        child: Center(
          child: Column(
            mainAxisSize: MainAxisSize.min,
            children: [
              this.child,
              SizedBox(height: 10),
              Text(
                this.text,
                textAlign: TextAlign.center,
                style: TextStyle(fontWeight: FontWeight.bold, fontSize: 20.0),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
