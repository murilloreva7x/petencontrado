import 'carousel.dart';
import 'package:flutter/material.dart';


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
              10.0, 10.0, 10.0, 0.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: <Widget>[
              CarouselWithIndicatorDemo(),
              Padding (
                padding: const EdgeInsets.all(
                    8.0
                ),
                child:
                Align(
                  child:
                  Text (
                    "Pet encontrado 10/05 as 18:00",
                    style: TextStyle(
                        color: Colors.black,
                        fontSize: 20.0,
                        fontWeight: FontWeight.bold,
                      fontFamily: 'Roboto',
                      letterSpacing: 0.5,
                    ),
                  ),
                  alignment: Alignment.center,
                ),
              ),
              Padding (
                padding: const EdgeInsets.all(8.0),
                child:
                Align(
                  child:
                  Text (
                    "Quem achou: Anderson Luis Ribeiro",
                    style: TextStyle(
                        color: Colors.black,
                        fontSize: 20.0,
                        fontWeight: FontWeight.bold,
                      fontFamily: 'Roboto',
                      letterSpacing: 0.5,
                    ),
                  ),
                  alignment: Alignment.center,
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(
                    top: 90.0
                ),
                child:
                Align(
                  child:
                  Text ("Este Pet é Seu?",
                    style: TextStyle(
                        color: Colors.black,
                        fontSize: 25.0,
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
                          fontSize: 20.0,
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
                        fontSize: 20.0,
                        fontFamily: 'Roboto',
                        letterSpacing: 1.0,
                      ),
                    ),

                      color: Colors.blueAccent,
                    onPressed: () {},
                      shape: new RoundedRectangleBorder(borderRadius: new BorderRadius.circular(8.0))
                  ),
                ],
                alignment: MainAxisAlignment.spaceBetween,
                mainAxisSize: MainAxisSize.max,
              )
            ],
          ),
        ));
  }
}
