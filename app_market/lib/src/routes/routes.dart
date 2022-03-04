import 'package:app_market/src/pages/detalle_page.dart';
import 'package:app_market/src/pages/info_page.dart';
import 'package:app_market/src/pages/inicio_page.dart';
import 'package:app_market/src/pages/lista_page.dart';
import 'package:app_market/src/pages/oferta_page.dart';
import 'package:app_market/src/pages/producto_page.dart';
import 'package:app_market/src/pages/usuario_page.dart';
import 'package:flutter/material.dart';
import 'package:app_market/src/pages/login_page.dart';

Map<String, WidgetBuilder> getApplicationRoutes(){
    return <String, WidgetBuilder>{
      '/'             : (BuildContext context) => LoginPage(),
      'inicio'        : (BuildContext context) => InicioPage(),
      'usuario'       : (BuildContext context) => UsuarioPage(),
      'oferta'        : (BuildContext context) => OfertaPage(),
      'lista'         : (BuildContext context) => ListaPage(),
      'productos'     : (BuildContext context) => ProductoPage(),
      'info'          : (BuildContext context) => InfoPage(),
      'detalle'       : (BuildContext context) => DetallePage(),
    };
}