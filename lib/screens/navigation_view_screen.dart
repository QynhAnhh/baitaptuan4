import 'package:flutter/material.dart';
class NavigationViewScreen extends StatelessWidget {
  const NavigationViewScreen({super.key});
  @override Widget build(BuildContext context) { return Scaffold(appBar: AppBar(title: const Text('Navigation View')), body: const Center(child: Text('Trang này có AppBar chứa nút Back ở góc trái')), bottomNavigationBar: BottomNavigationBar(items: const [BottomNavigationBarItem(icon: Icon(Icons.home), label: 'Home'), BottomNavigationBarItem(icon: Icon(Icons.settings), label: 'Settings')])); }
}