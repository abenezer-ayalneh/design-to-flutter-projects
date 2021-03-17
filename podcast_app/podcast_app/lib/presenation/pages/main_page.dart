import 'package:flutter/material.dart';

class MainPage extends StatefulWidget {
  @override
  _MainPageState createState() => _MainPageState();
}

class _MainPageState extends State<MainPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          Expanded(
            flex: 5,
            child: Container(color: Colors.amber),
          ),
          Expanded(
            flex: 7,
            child: Container(color: Colors.blue),
          ),
        ],
      ),
    );
  }
}
