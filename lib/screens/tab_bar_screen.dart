import 'package:flutter/material.dart';
class TabBarScreen extends StatelessWidget {
  const TabBarScreen({super.key});
  @override Widget build(BuildContext context) { return DefaultTabController(length: 2, child: Scaffold(appBar: AppBar(title: const Text('TabBar'), bottom: const TabBar(tabs: [Tab(icon: Icon(Icons.chat), text: 'Chat'), Tab(icon: Icon(Icons.call), text: 'Call')])), body: const TabBarView(children: [Center(child: Text('Tab Chat')), Center(child: Text('Tab Call'))]))); }
}