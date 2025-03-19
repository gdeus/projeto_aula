import 'dart:math';

import 'package:flutter/material.dart';

class StateExampleRevert extends StatefulWidget {
  const StateExampleRevert({super.key});

  @override
  State<StateExampleRevert> createState() => _StateExampleState();
}

class _StateExampleState extends State<StateExampleRevert> {
  Color corDoContainer = Colors.blueAccent;
  double largura = 200;
  double altura = 200;

  Color randomColor(){
    var rng = Random();
    return Color.fromRGBO(255, rng.nextInt(100), rng.nextInt(100), 1);
  }

  double randomLargura(){
    var rng = Random();
    return rng.nextDouble() * MediaQuery.of(context).size.width;
  }

  double randomAltura(){
    var rng = Random();
    return rng.nextDouble() * MediaQuery.of(context).size.height * 0.85;
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.purple,
        title: Text(
          'Gerenciamento de estado exemplo',
          style: TextStyle(
            fontSize: 16
          ),
        ),
      ),
      body: Stack(
        children: [
          GestureDetector(
            onTap: () {
              setState(() {
                altura = randomAltura();
                largura = randomLargura();
              });
            },
            child: Container(
              width: double.infinity,
              height: double.infinity,
              color: Colors.red,
            ),
          ),
          Container(
            height: altura,
            width: largura,
            color: Colors.amber,
          ),
        ],
      )
    );  
  }
}