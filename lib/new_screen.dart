import 'package:flutter/material.dart';

class NewScreen extends StatefulWidget {
  final String name;
  const NewScreen({super.key, required this.name});

  @override
  State<NewScreen> createState() => _NewScreenState();
}

class _NewScreenState extends State<NewScreen> {
  @override
  Widget build(BuildContext context) {
    return const Placeholder();
  }
}