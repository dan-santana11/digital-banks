import 'package:flutter/material.dart';
import 'home.dart';
import 'package:mask_text_input_formatter/mask_text_input_formatter.dart';


var maskFormattercpf = new MaskTextInputFormatter(mask: '###.###.###-##', filter: { "#": RegExp(r'[0-9]') });

class PageLogin extends StatefulWidget {
  @override
  _PageLoginState createState() => _PageLoginState();
}

class _PageLoginState extends State<PageLogin> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.blueAccent,
      body: Padding(
        padding: EdgeInsets.all(10),
        child: Center(child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            TextFormField(
              inputFormatters: [maskFormattercpf],
              autofocus: true,
              keyboardType: TextInputType.number,
              style: new TextStyle(color: Colors.white, fontSize:20),
              decoration: InputDecoration(
                labelText: "CPF",
                labelStyle: TextStyle(color: Colors.white)
              ),
            ),
            Divider(),
            TextFormField(
              autofocus: true,
              obscureText: true,
              keyboardType: TextInputType.text,
              style: new TextStyle(color: Colors.white, fontSize:20),
              decoration: InputDecoration(
                labelText: "Senha",
                labelStyle: TextStyle(color: Colors.white)
              ),
            ),
            Divider(),
            ButtonTheme(
              height: 40.0,
              child: RaisedButton(
                 onPressed: () {
              Navigator.push(
                  context,
                  MaterialPageRoute(
                      builder: (BuildContext context) => HomePage()));
            },
                child: Text("Entrar", style: TextStyle(
                  color: Colors.white, fontSize: 16, 
                ),),
                color: Colors.greenAccent,
              ),
            ),
          ]
        ),)
      ),
    );
  }
}