import 'package:flutter/material.dart';
class ButtonScreen extends StatelessWidget {
  const ButtonScreen({super.key});
  @override Widget build(BuildContext context) { return Scaffold(appBar: AppBar(title: const Text('Button')), body: Center(child: Column(mainAxisAlignment: MainAxisAlignment.spaceEvenly, children: [ElevatedButton(onPressed: (){}, child: const Text('Elevated Button')), OutlinedButton(onPressed: (){}, child: const Text('Outlined Button')), TextButton(onPressed: (){}, child: const Text('Text Button'))]))); }
}