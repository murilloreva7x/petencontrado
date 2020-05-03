import 'package:flutter/material.dart';

void main() {
  runApp(MaterialApp(
    home: Home(),
  ));
}

class Home extends StatefulWidget {
  @override
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<Home> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text("Pet encontrado"),
          centerTitle: true,
          backgroundColor: Colors.lightBlue,
          actions: <Widget>[
            IconButton(
              icon: Icon(Icons.keyboard_backspace),
              onPressed: () {},
            )
          ],
        ),
        backgroundColor: Colors.white,
        body: SingleChildScrollView(
          padding: EdgeInsets.fromLTRB(10.0, 0.0, 10.0, 0.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: <Widget>[
              Icon(
                Icons.image,
                size: 300.0,
                color: Colors.lightBlue,
              ),
              TextField(
                keyboardType: TextInputType.multiline,
                decoration: InputDecoration(
                    labelText: "Qual dia o Pet foi encontrado?",
                    labelStyle: TextStyle(color: Colors.lightBlue)),
                textAlign: TextAlign.left,
                style: TextStyle(color: Colors.lightBlue, fontSize: 20.0),
              ),
              TextField(
                keyboardType: TextInputType.multiline,
                decoration: InputDecoration(
                    labelText: "Qual endereco o Animal foi encontrado?",
                    labelStyle: TextStyle(color: Colors.lightBlue)),
                textAlign: TextAlign.left,
                style: TextStyle(color: Colors.lightBlue, fontSize: 20.0),
              ),
              ButtonBar(
                children: <Widget>[
                  FlatButton(
                    child: Text(
                      "Cancelar",
                      style: TextStyle(color: Colors.lightBlue, fontSize: 25.0),
                    ),
                    onPressed: () {},
                  ),
                  FlatButton(
                    child: Text(
                      "Mapa",
                      style: TextStyle(color: Colors.white, fontSize: 25.0),
                    ),
                    color: Colors.lightBlue,
                    onPressed: () {},
                  )
                ],
                alignment: MainAxisAlignment.center,
                mainAxisSize: MainAxisSize.max,
              )
            ],
          ),
        ));
  }
}
