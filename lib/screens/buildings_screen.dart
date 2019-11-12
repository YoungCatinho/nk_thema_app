import 'package:flutter/material.dart';

import 'build_40.dart';
import 'build_41.dart';
import 'build_42.dart';
import 'build_43.dart';
import 'build_44.dart';
import 'build_45.dart';
import 'build_46.dart';
import 'build_50.dart';
import 'build_51.dart';
import 'build_52.dart';

class buildingsScreen extends StatefulWidget {
  @override
  _buildingsScreenState createState() => _buildingsScreenState();
}

class _buildingsScreenState extends State<buildingsScreen> {
  final List<String> fachbereich = <String>[
    'Ai',
    'Ai',
    'Ai',
    'Ai',
    'Ai',
    'Ai',
    'Ai',
    'Ai',
    'Ai',
    'Ai'
  ];
  final List<int> buildingNumbers = <int>[
    40,
    41,
    42,
    43,
    44,
    45,
    46,
    50,
    51,
    52
  ];
  final List<String> buildingCodes = <String>[
    'L',
    'S',
    '?',
    'C',
    'SLZ',
    '?',
    'E',
    'ASTA',
    'G',
    'Halle 8'
  ];
  final List<Widget> pages = <Widget>[
    build40(),
    build41(),
    build42(),
    build43(),
    build44(),
    build45(),
    build46(),
    build50(),
    build51(),
    build52(),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Gebäude der HS Fulda"),
      ),
      body: ListView.separated(
        padding: const EdgeInsets.all(8),
        itemCount: 10,
        itemBuilder: (BuildContext context, int index) {
          return Container(
            height: 50,
            child: ListTile(
              enabled: true,
              title: Text("Gebäude ${buildingNumbers[index]}"),
              subtitle: Text("Fachbereich: ${fachbereich[index]}"),
              leading: Text(
                '${buildingCodes[index]}',
                style: TextStyle(
                  fontSize: 30,
                ),
              ),
              trailing: Icon(Icons.add_a_photo),
              onTap: () {
                print("Gebäude ${buildingNumbers[index]} wird geladen.");
                Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => pages[index],
                    )
                );
              },
            ),
          );
        },
        separatorBuilder: (BuildContext context, int index) => const Divider(),
      ),
    );
  }
}
