import 'package:flutter/material.dart';

class ProductoPage extends StatefulWidget {
  ProductoPage({Key? key}) : super(key: key);

  @override
  _ProductoPageState createState() => _ProductoPageState();
}

class _ProductoPageState extends State<ProductoPage> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
      appBar: AppBar(
        title: Text('Productos'),
      ),
      bottomNavigationBar: _bottomNavigatorBar(context),
      body: GridView.count(
        crossAxisCount: 3,
        children: [
          ProductCard(
            child: GestureDetector(
                onTap: () {
                  Navigator.pushNamed(context, 'detalle');
                },
                child: Image(image: AssetImage('assets/img/papa.png'),height: 40,width: 40,)
            ),
            text: 'Papa',
          )
        ],
      ),
    ));
  }

  BottomNavigationBar _bottomNavigatorBar(BuildContext context) {
    int _currentIndex = 0;
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
            backgroundColor: Colors.blue),
        BottomNavigationBarItem(
            icon: Icon(Icons.info),
            label: "Info.",
            backgroundColor: Colors.blue)
      ],
      onTap: (index) {
        setState(() {
          _currentIndex = index;
          switch (index) {
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

class ProductCard extends StatelessWidget {
  final Widget child;
  final String text;

  const ProductCard({
    Key? key,
     required this.child, required this.text
  }) : super(key: key);

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
                style: TextStyle(
                    fontWeight: FontWeight.bold, fontSize: 20.0),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
