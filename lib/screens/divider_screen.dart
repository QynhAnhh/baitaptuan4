import 'package:flutter/material.dart';
class DividerScreen extends StatelessWidget {
  const DividerScreen({super.key});
  @override Widget build(BuildContext context) { return Scaffold(appBar: AppBar(title: const Text('Divider')), body: const Column(children: [ListTile(title: Text('Phần trên')), Divider(thickness: 2, color: Colors.grey), ListTile(title: Text('Phần dưới sau đường kẻ'))])); }
}