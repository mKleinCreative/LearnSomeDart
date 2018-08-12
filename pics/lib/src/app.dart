import 'package:flutter/material.dart';

class App extends StatelessWidget {
  Widget build(context) {
    return MaterialApp(
      home: Scaffold(
        floatingActionButton: FloatingActionButton(
            child: Icon(Icons.add_a_photo),
            onPressed: () {
              print('oh yeah, touch me right there');
            }),
        appBar: AppBar(
          title: Text('Let\'s see some Meme\'s!'),
        ),
      ),
    );
  }
}
