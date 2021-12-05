import 'package:flutter/material.dart';
import 'dart:math';

void main() {
  return runApp(
    MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        backgroundColor: Colors.orange[500],
        appBar: AppBar(
          title: Center(
            child: Text('Dados Aleatórios!'),
          ),
          backgroundColor: Colors.orange[800],
        ),
        body: Dadoos(),
      ),
    ),
  );
}

class Dadoos extends StatefulWidget {
  @override
  _DadoosState createState() => _DadoosState();
}

class _DadoosState extends State<Dadoos> {
  var numDadoEsq = 2;
  var numDadoDir = 1;

  Function alter() {
    numDadoEsq = Random().nextInt(6) + 1;
    Image.asset('imagens/dado$numDadoEsq.png');
    numDadoDir = Random().nextInt(6) + 1;
    Image.asset('imagens/dado$numDadoDir.png');
  }

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Row(
        children: [
          Expanded(
            child: TextButton(
                onPressed: () {
                  setState(() {
                    alter();
                  });
                },
                child: Image.asset('imagens/dado$numDadoEsq.png')),
          ),
          Expanded(
            child: TextButton(
                onPressed: () {
                  setState(() {
                    alter();
                  });
                },
                child: Image.asset('imagens/dado$numDadoDir.png')),
          ),
        ],
      ),
    );
  }
}

//propriedade 'flex' ele proporciona o tamanho
          // flex: 2,