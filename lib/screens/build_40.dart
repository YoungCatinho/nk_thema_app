import 'package:flutter/material.dart';

class build40 extends StatefulWidget {
  @override
  _build40State createState() => _build40State();
}

class _build40State extends State<build40> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Gebäude 40"),
      ),
      body: Column(
        children: <Widget>[
          Image(
            image: AssetImage("assets/images/catto.jpg"),
          ),
          Padding(
            padding: EdgeInsets.all(10.0),
            child: Text("Hier steht ein Text zu diesem Gebäude..."),
          ),
        ],
      ),
    );
  }
}
