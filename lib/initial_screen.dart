import 'package:flutter/material.dart';
import 'package:projeto_aula/home_screen.dart';
import 'package:projeto_aula/state_example.dart';
import 'package:projeto_aula/state_example_reverse.dart';

class InitialScreen extends StatefulWidget {
  const InitialScreen({super.key});

  @override
  State<InitialScreen> createState() => _InitialScreenState();
}

class _InitialScreenState extends State<InitialScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.lightGreen,
        title: Text('Aula'),
      ),
      body: Column(
        children: [
          TextButton(
            onPressed: (){
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => const HomeScreen()),
              );
            }, 
            child: Text('Aula 01 - Tentativa de clone de tela')
          ),
          TextButton(
            onPressed: (){
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => const StateExample()),
              );
            }, 
            child: Text('Aula 02 - Gerenciamento de estado')
          ),
          TextButton(
            onPressed: (){
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => const StateExampleRevert()),
              );
            }, 
            child: Text('Aula 03 - Gerenciamento de estado reverso')
          )
        ],
      ),
    );
  }
}