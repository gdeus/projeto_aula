import 'package:flutter/material.dart';
import 'package:projeto_aula/post.dart';

class CardPhoto extends StatelessWidget {
  final Post post;
  const CardPhoto({super.key, required this.post});

  @override
  Widget build(BuildContext context) {
    return Card(
      color: Colors.black,
      child: Column(
        children: [
          Row(
            children: [
              Container(
                decoration: BoxDecoration(
                  color: Colors.redAccent,
                  borderRadius: BorderRadius.all(Radius.circular(50))
                ),
                margin: EdgeInsets.all(12),
                height: 20,
                width: 20,
                child: Image.network(
                  post.user.urlPhoto,
                  fit: BoxFit.cover,
                ),
              ),
              Text(
                post.user.nickname,
                style: TextStyle(
                  color: Colors.white,
                  fontWeight: FontWeight.bold
                ),
              ),
              Icon(Icons.more_horiz),
            ],
          ),
          Image.network(
            post.urlPhoto,
            width: MediaQuery.of(context).size.width * 0.8,
          )
        ],
      ),
    );
  }
}