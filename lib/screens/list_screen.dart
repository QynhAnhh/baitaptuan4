import 'package:flutter/material.dart';
class ListScreen extends StatelessWidget {
  const ListScreen({super.key});
  @override Widget build(BuildContext context) { return Scaffold(appBar: AppBar(title: const Text('List')), body: ListView.builder(itemCount: 20, itemBuilder: (context, i) => ListTile(leading: const Icon(Icons.star), title: Text('Dòng thứ ${i + 1}')))); }
}