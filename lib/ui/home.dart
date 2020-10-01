import 'package:flutter/material.dart';

class HomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: Text('Digital Banks'),
        backgroundColor: Colors.blue,
      ),
      body: Container(
        child: Center(
          child: RaisedButton(
            onPressed: () {
              Navigator.pop(context);
            },
            child: Text('Sair', style: TextStyle( color: Colors.white),),
            color: Colors.deepPurple,
          ),
        ),
      ),
    );
  }
}