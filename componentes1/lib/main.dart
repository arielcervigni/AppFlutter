import 'package:componentes1/src/routes/routes.dart';
import 'package:flutter/material.dart';

import 'package:componentes1/src/pages/alert_page.dart';
import 'package:componentes1/src/pages/home_page.dart';


 
void main() => runApp(MyApp());
 
class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Componentes APP',
      debugShowCheckedModeBanner: false,
      initialRoute: '/',
      routes: getApplicationRoutes(),
      onGenerateRoute: (RouteSettings settings){
        return MaterialPageRoute(builder: (BuildContext context) => AlertPage() 
        );
      },
      
      
      //home: HomePage()
    ); // MaterialApp
  }
}


