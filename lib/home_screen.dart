import 'package:flutter/material.dart';
import 'package:projeto_aula/card_photo.dart';
import 'package:projeto_aula/posts_service.dart';
import 'package:projeto_aula/storie_widget.dart';
import 'package:projeto_aula/stories_service.dart';

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
      body: SingleChildScrollView(
        child: Column(
          children: [
            SizedBox(
              height: 80,
              child: ListView.builder(
                itemCount: storiesList.length,
                itemBuilder: (context, index){
                  return StorieWidget(storie: storiesList[index]);
                },
                scrollDirection: Axis.horizontal,
              ),
            ),
            ListView.builder(
              shrinkWrap: true,
              itemCount: postService.length,
              physics: NeverScrollableScrollPhysics(),
              itemBuilder: (context, index){
                return CardPhoto(post: postService[index]);
              }
            )
          ],
        ),
      ),
    );
  }
}