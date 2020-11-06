import 'package:flutter/material.dart';

import 'home_page2.dart';

void main() {
  runApp(App());
}

class App extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      // Esse Widget é definido uma única vez no seu aplicativo inteiro
      debugShowCheckedModeBanner: false, // Desabilita banner de Debug
      theme: ThemeData(
        primaryColor: Color(0xFF09af00),
        primaryColorDark: Color(0xFF008b00),
        accentColor: Color(0xFF880061),
      ),
      home: HomePage2(),
      // home: Scaffold(
      //   //Scaffold permite que você adicione outros widgets, cria uma página basicamente
      //   appBar: AppBar(
      //     // appbar é outro widget
      //     title: Text("Página inicial"), //Textos também são widgets
      //   ),
      //   drawer: Drawer(
      //     child: Container(
      //       color: Colors.yellow,
      //     ),
      //   ),
      //   body: Container(
      //     child: Center( // Vários widgets são de organização do código, assim temos filhos
      //       child: Text("Minha primeira página Flutter"),
      //     ),
      //   ),
      //   floatingActionButton: FloatingActionButton(
      //     child: Icon(Icons.add),
      //     onPressed: () {},
      //   ),
      // ),
    );
  }
}
