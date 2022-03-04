import 'package:flutter/material.dart';
import 'package:app_market/src/routes/routes.dart';

void main()=> runApp(MarketApp());

class MarketApp extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'MarketApp',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        primarySwatch: Colors.blue
      ),
      initialRoute: '/',
      routes: getApplicationRoutes(),
    );
  }
}