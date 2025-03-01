import 'package:flutter/material.dart';

class CardPhoto extends StatelessWidget {
  const CardPhoto({super.key});

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
                  "https://www.cnnbrasil.com.br/wp-content/uploads/sites/12/2022/12/DES20221218234.jpg",
                  fit: BoxFit.cover,
                ),
              ),
              Text(
                "Lionel Messi",
                style: TextStyle(
                  color: Colors.white,
                  fontWeight: FontWeight.bold
                ),
              ),
              Icon(Icons.more_horiz),
            ],
          ),
          Image.network(
            "https://www.cnnbrasil.com.br/wp-content/uploads/sites/12/2023/02/GettyImages-1470059015.jpg",
            width: MediaQuery.of(context).size.width * 0.8,
          )
        ],
      ),
    );
  }
}