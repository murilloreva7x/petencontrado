import 'package:flutter/cupertino.dart';
import 'carousel.dart';
import 'package:flutter/material.dart';
import 'package:material_design_icons_flutter/material_design_icons_flutter.dart';

class Home extends StatefulWidget {
  @override
    _HomeState createState() => _HomeState();
}

class _HomeState extends State<Home> {
  @override
  Widget build(
      BuildContext context) {
    return Scaffold(
        backgroundColor: Colors.white,
        body: SingleChildScrollView(
          padding: EdgeInsets.fromLTRB(
              8.0, 25.0, 8.0, 10.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: <Widget>[
              CarouselWithIndicatorDemo(),
              Padding (
                padding: const EdgeInsets.all(10.0
                ),
                child:
                Align(
                  child:
                  Text (
                    "Pet encontrado 10/05 as 18:00",
                    style: TextStyle(
                        color: Colors.black,
                        fontSize: 18.0,
                        fontWeight: FontWeight.bold,
                      fontFamily: 'Roboto',
                      letterSpacing: 0.5,
                    ),
                  ),
                  alignment: Alignment.bottomLeft,
                ),
              ),
              Padding (
                padding: const EdgeInsets.all(10.0),
                child:
                Align(
                  child:
                  Text (
                    "Quem achou: Anderson Luis Ribeiro",
                    style: TextStyle(
                        color: Colors.black,
                        fontSize: 18.0,
                        fontWeight: FontWeight.bold,
                      fontFamily: 'Roboto',
                      letterSpacing: 0.5,
                    ),
                  ),

                  alignment: Alignment.bottomLeft,
                ),
              ),
              Padding (
                padding: const EdgeInsets.all(20.0),
                child:
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                    children: const <Widget>[
                      Icon(
                        MdiIcons.whatsapp,
                        color: Colors.green,
                        size: 50.0,
                      ),
                      Icon(
                        Icons.call,
                        color: Colors.blueAccent,
                        size: 50.0,
                      ),
                      Icon(
                        Icons.email,
                        color: Colors.red,
                        size: 50.0,
                      )
                    ],
                  ),
              ),
              Padding(
                padding: const EdgeInsets.only(
                    top: 2.0
                ),
                child:
                Align(
                  child:
                  Text ("Este Pet é Seu?",
                    style: TextStyle(
                        color: Colors.black,
                        fontSize: 20.0,
                        fontWeight: FontWeight.bold,
                      fontFamily: 'Roboto',
                      letterSpacing: 0.0,
                    ),
                  ),
                  alignment: Alignment.center,
                ),
              ),

              ButtonBar(
                children: <Widget>[
                  FlatButton.icon(
                    icon: Icon(
                        Icons.arrow_back_ios
                    ),
                    label: Text('Não',
                      style: TextStyle(
                          color: Colors.white,
                          fontSize: 14.0,
                        fontFamily: 'Roboto',
                        letterSpacing: 1.0,
                      ),
                    ),

                    color: Colors.blueAccent,
                    onPressed: () {},
                      shape: new RoundedRectangleBorder(borderRadius: new BorderRadius.circular(8.0))

                  ),
                  FlatButton.icon(
                    icon: Icon(
                        Icons.location_on
                    ),
                    label: Text('Sim',
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: 14.0,
                        fontFamily: 'Roboto',
                        letterSpacing: 1.0,
                      ),
                    ),

                      color: Colors.blueAccent,
                    onPressed: () {},
                      shape: new RoundedRectangleBorder(borderRadius: new BorderRadius.circular(8.0))
                  ),
                ],
                buttonHeight: 36.0,
                buttonMinWidth: 113.0,
                buttonPadding: EdgeInsets.all(5.0),

                alignment: MainAxisAlignment.spaceBetween,
                mainAxisSize: MainAxisSize.max,
              )
            ],
          ),
        ));
  }
}


