import 'carousel.dart';
import 'package:flutter/material.dart';

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
          backgroundColor: Colors.blueAccent,
          actions: <Widget>[
            IconButton(
              icon: Icon(Icons.keyboard_backspace),
              onPressed: () {},
            )
          ],
        ),
        backgroundColor: Colors.white,
        body: SingleChildScrollView(
          padding: EdgeInsets.fromLTRB(0.0, 0.0, 0.0, 0.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: <Widget>[
              CarouselWithIndicatorDemo(),
              Padding (
                padding: const EdgeInsets.all(8.0),
                child:
                Align(
                  child:
                  Text ("Pet encontrado 10/05 as 18:00",
                    style: TextStyle(color: Colors.black45, fontSize: 20.0, fontWeight: FontWeight.bold),
                  ),
                  alignment: Alignment.center,
                ),
              ),
              Padding (
                padding: const EdgeInsets.all(8.0),
                child:
                Align(
                  child:
                  Text ("Quem achou: Anderson Luis Ribeiro",
                    style: TextStyle(color: Colors.black45, fontSize: 20.0, fontWeight: FontWeight.bold),
                  ),
                  alignment: Alignment.center,
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(top: 80.0),
                child:
                Align(
                  child:
                  Text ("Este Pet é Seu?",
                    style: TextStyle(color: Colors.black45, fontSize: 25.0, fontWeight: FontWeight.bold),
                  ),
                  alignment: Alignment.center,
                ),
              ),

              ButtonBar(
                children: <Widget>[
                  FlatButton.icon(
                    icon: Icon(
                        Icons.arrow_back
                    ),
                    label: Text('Não',
                      style: TextStyle(color: Colors.white, fontSize: 25.0),
                    ),

                    color: Colors.blueAccent,
                    onPressed: () {},

                  ),
                  FlatButton.icon(
                    icon: Icon(
                        Icons.pin_drop
                    ),
                    label: Text('Sim',
                      style: TextStyle(color: Colors.white, fontSize: 25.0),
                    ),

                    color: Colors.blueAccent,
                    onPressed: () {},
                  ),
                ],
                alignment: MainAxisAlignment.center,
                mainAxisSize: MainAxisSize.max,
              )
            ],
          ),
        ));
  }
}
