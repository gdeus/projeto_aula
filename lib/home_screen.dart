import 'package:flutter/material.dart';
import 'package:projeto_aula/card_photo.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      appBar: AppBar(
        backgroundColor: Colors.black,
        title: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Text(
              'Instagram',
              style: TextStyle(
                fontSize: 24,
                color: Colors.white
              ),
            ),
            Row(
              children: [
                Icon(
                  Icons.heart_broken_sharp,
                  color: Colors.white,
                ),
                Icon(
                  Icons.messenger,
                  color: Colors.white,
                )
              ],
            ),
          ],
        ),
      ),
      body: Column(
        children: [
          SingleChildScrollView(
            scrollDirection: Axis.horizontal,
            child: Row(
              children: [ 
                Container(
                  decoration: BoxDecoration(
                    color: Colors.redAccent,
                    borderRadius: BorderRadius.all(Radius.circular(50))
                  ),
                  margin: EdgeInsets.all(12),
                  height: 60,
                  width: 60,
                  child: Image.network(
                    "https://www.cnnbrasil.com.br/wp-content/uploads/sites/12/2022/12/DES20221218234.jpg",
                    fit: BoxFit.cover,
                  ),
                ),
                Container(
                  decoration: BoxDecoration(
                    color: Colors.blue,
                    borderRadius: BorderRadius.all(Radius.circular(50))
                  ),
                  margin: EdgeInsets.all(12),
                  height: 60,
                  width: 60,
                ),
                Container(
                  decoration: BoxDecoration(
                    color: Colors.green,
                    borderRadius: BorderRadius.all(Radius.circular(50))
                  ),
                  margin: EdgeInsets.all(12),
                  height: 60,
                  width: 60,
                ),
                Container(
                  decoration: BoxDecoration(
                    color: Colors.blueGrey,
                    borderRadius: BorderRadius.all(Radius.circular(50))
                  ),
                  margin: EdgeInsets.all(12),
                  height: 60,
                  width: 60,
                ),
                Container(
                  decoration: BoxDecoration(
                    color: Colors.purpleAccent,
                    borderRadius: BorderRadius.all(Radius.circular(50))
                  ),
                  margin: EdgeInsets.all(12),
                  height: 60,
                  width: 60,
                ),
                Container(
                  decoration: BoxDecoration(
                    color: Colors.pink,
                    borderRadius: BorderRadius.all(Radius.circular(50))
                  ),
                  margin: EdgeInsets.all(12),
                  height: 60,
                  width: 60,
                ),
                Container(
                  decoration: BoxDecoration(
                    color: Colors.orangeAccent,
                    borderRadius: BorderRadius.all(Radius.circular(50))
                  ),
                  margin: EdgeInsets.all(12),
                  height: 60,
                  width: 60,
                ),
                Container(
                  decoration: BoxDecoration(
                    color: Colors.yellow,
                    borderRadius: BorderRadius.all(Radius.circular(50))
                  ),
                  margin: EdgeInsets.all(12),
                  height: 60,
                  width: 60,
                ),
              ],
            ),
          ),
          CardPhoto()
        ],
      ),
    );
  }
}