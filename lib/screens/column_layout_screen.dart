import 'package:flutter/material.dart';
class ColumnLayoutScreen extends StatelessWidget {
  const ColumnLayoutScreen({super.key});
  @override Widget build(BuildContext context) { return Scaffold(appBar: AppBar(title: const Text('Column Layout')), body: Center(child: Column(mainAxisAlignment: MainAxisAlignment.spaceEvenly, children: [Container(height: 80, width: 200, color: Colors.blue[200]), Container(height: 80, width: 200, color: Colors.blue[400]), Container(height: 80, width: 200, color: Colors.blue[600])]))); }
}