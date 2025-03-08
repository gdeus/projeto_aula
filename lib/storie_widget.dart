import 'package:flutter/material.dart';
import 'package:projeto_aula/storie.dart';

class StorieWidget extends StatelessWidget {
  final Storie storie;
  const StorieWidget({super.key, required this.storie});

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        color: storie.visible ? Colors.black : Colors.redAccent,
        borderRadius: BorderRadius.all(Radius.circular(50))
      ),
      margin: EdgeInsets.all(12),
      height: 60,
      width: 60,
      child: CircleAvatar(
        backgroundImage: NetworkImage(storie.userPhoto),
      )
    );
  }
}