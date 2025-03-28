import 'package:flutter/material.dart';
import 'package:projeto_aula/amiibos/amiibo.dart';

class CardAmiibo extends StatelessWidget {
  final Amiibo amiibo;
  const CardAmiibo({super.key, required this.amiibo});

  @override
  Widget build(BuildContext context) {
    return Card(
      child: Row(
        children: [
          Container(
            width: 40,
            height: 100,
            child: Image.network(amiibo.image),
          ),
          SizedBox(
            width: 30,
          ),
          Column(
            children: [
              Text('Nome: ${amiibo.name}'),
              Text('Jogo: ${amiibo.game}')
            ],
          )
        ],
      ),
    );
  }
}