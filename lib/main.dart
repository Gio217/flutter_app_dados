import 'package:flutter/material.dart';

void main() {
  return runApp(
    MaterialApp(
      home: Scaffold(
        backgroundColor: Colors.blue,
        appBar: AppBar(
          title: Text('Dados'),
          backgroundColor: Colors.blue,
        ),
        body: _novaPaginaDados(),
      ),
    ),
  );
}

class _novaPaginaDados extends StatefulWidget {
  const _novaPaginaDados({Key? key}) : super(key: key);

  @override
  State<_novaPaginaDados> createState() => new __novaPaginaDadosState();
}

class __novaPaginaDadosState extends State<_novaPaginaDados> {
  int valorTirado = 1, valorTirado2 = 2;
  @override
  Widget build(BuildContext context) {
    return Center(
      child: Row(
        children: <Widget>[
          Expanded(
            child: FlatButton(
              onPressed: () {
                setState(() {
                  if (valorTirado <= 5) {
                    valorTirado++;
                  } else {
                    valorTirado = 1;
                  }
                });
              },
              child: Image.asset('images/dado$valorTirado.png'),
            ),
          ),
          Expanded(
            child: FlatButton(
              onPressed: () {
                setState(() {
                  if (valorTirado2 <= 5) {
                    valorTirado2++;
                  } else {
                    valorTirado2 = 1;
                  }
                });
              },
              child: Image.asset('images/dado$valorTirado2.png'),
            ),
          ),
        ],
      ),
    );
  }
}
