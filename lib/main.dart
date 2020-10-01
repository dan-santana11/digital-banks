import 'package:flutter/material.dart';
import 'ui/login.dart';


void main() => runApp(MyApp());

class MyApp extends StatelessWidget{

  @override
  Widget build(BuildContext context){
    return MaterialApp(
      title: ' Bem Vindo a Digital Banks',
      theme: ThemeData(primarySwatch: Colors.deepOrange),
      home: PageLogin(),
      debugShowCheckedModeBanner: false,
    );
  }
}