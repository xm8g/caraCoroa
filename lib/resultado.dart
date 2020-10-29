import 'package:flutter/material.dart';

class Resultado extends StatefulWidget {

  bool result;

  Resultado({this.result});

  @override
  _ResultadoState createState() => _ResultadoState();
}

class _ResultadoState extends State<Resultado> {

  Image imageResult(bool resultado) {
    if (resultado) {
      return Image.asset('images/moeda_cara.png');
    } else {
      return Image.asset('images/moeda_coroa.png');
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color.fromRGBO(97, 189, 140, 1),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            imageResult(widget.result),
            GestureDetector(
              onTap: () {
                Navigator.of(context).pop();
              },
              child: Padding(
                padding: const EdgeInsets.only(top: 24),
                child: Image.asset('images/botao_voltar.png'),
              ),
            ),
          ],
        ),
      ),
    );
  }

}
