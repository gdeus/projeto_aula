import 'dart:math';

import 'package:flutter/material.dart';

class StateExample extends StatefulWidget {
  const StateExample({super.key});

  @override
  State<StateExample> createState() => _StateExampleState();
}

class _StateExampleState extends State<StateExample> {
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
      body: Column(
        children: [
          GestureDetector(
            onTap: (){
              setState(() {
                largura = randomLargura();
                altura = randomAltura();
                corDoContainer = randomColor();
              });        
            },
            child: Container(
              height: altura,
              width: largura,
              color: corDoContainer,
            ),
          )
        ],
      ),
    );  
  }
}