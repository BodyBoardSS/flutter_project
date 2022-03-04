import 'package:flutter/material.dart';

class LoginPage extends StatefulWidget {
  static String id = 'login_page';
  @override
  _LoginPageState createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            children: _login,
            mainAxisSize: MainAxisSize.min,
          ),
        ),
        resizeToAvoidBottomInset: false,
      ),
    );
  }

  List<Widget> get _login {
    return [
            SizedBox(
              height: 35.0,
            ),
            Text(
              "Bienvenido de nuevo",
              style: TextStyle(
                fontSize: 35.0,
                fontWeight: FontWeight.bold
              ),
            ),
            SizedBox(
              height: 35.0,
            ),
            Text(
              "Inicio de sesión",
              style: TextStyle(
                fontSize: 25.0,
              ),
            ),
            SizedBox(
              height: 45.0,
            ),
            _userTextFiel(),
            SizedBox(
              height: 15.0,
            ),
            _passwordTextFiel(),
            SizedBox(
              height: 40.0,
            ),
            _bottonLogin(),
            SizedBox(
              height: 40.0,
            ),
            Text(
              "¿Aún no tienes una cuenta?",
              style: TextStyle(
                fontSize: 20.0,
              ),
            ),
            SizedBox(
              height: 15.0,
            ),
            Text(
              "Registrarme",
              style: TextStyle(
                fontSize: 25.0,
                fontWeight: FontWeight.bold
              ),
            ),
          ];
  }

  Widget _userTextFiel() {
    return StreamBuilder(
        builder: (BuildContext context, AsyncSnapshot snapshot) {
      return Container(
        padding: EdgeInsets.symmetric(horizontal: 20.0),
        child: TextField(
          decoration: InputDecoration(
              suffixIcon: Icon(Icons.person),
              hintText: 'Ingrese su usuario',
              border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(10.0))),
          onChanged: (value) {},
        ),
      );
    });
  }

  Widget _passwordTextFiel() {
    return StreamBuilder(
        builder: (BuildContext context, AsyncSnapshot snapshot) {
      return Container(
        padding: EdgeInsets.symmetric(horizontal: 20.0),
        child: TextField(
          obscureText: true,
          decoration: InputDecoration(
              suffixIcon: Icon(Icons.lock),
              hintText: 'Ingrese su contraseña',
              border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(10.0))),
          onChanged: (value) {},
        ),
      );
    });
  }

  Widget _bottonLogin() {
    return StreamBuilder(
        builder: (BuildContext context, AsyncSnapshot snapshot) {
      return ElevatedButton(
        child: Container(
            padding: EdgeInsets.symmetric(horizontal: 100.0, vertical: 15.0),
            child: Text('Ingresar', style: TextStyle(fontWeight: FontWeight.bold, fontSize: 16.0),)),
        onPressed: () {
          Navigator.pushNamed(context, 'inicio');
        },
      );
    });
  }
}
