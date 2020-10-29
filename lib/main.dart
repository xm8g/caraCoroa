import 'dart:math';

import 'package:cara_coroa/resultado.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(CaraCoroa());
}

class CaraCoroa extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
        visualDensity: VisualDensity.adaptivePlatformDensity,
      ),
      home: MyHomePage(),
    );
  }
}

class MyHomePage extends StatefulWidget {
  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color.fromRGBO(97, 189, 140, 1),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Image.asset('images/logo.png'),
            GestureDetector(
              onTap: () {
                Navigator.push(
                    context,
                    MaterialPageRoute<void>(
                        builder: (context) =>
                            Resultado(result: Random().nextBool())));
              },
              child: Padding(
                padding: const EdgeInsets.only(top: 24),
                child: Image.asset('images/botao_jogar.png'),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
