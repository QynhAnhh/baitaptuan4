import 'package:flutter/material.dart';
class MenuScreen extends StatelessWidget {
  const MenuScreen({super.key});
  @override Widget build(BuildContext context) { return Scaffold(appBar: AppBar(title: const Text('Menu'), actions: [PopupMenuButton<String>(onSelected: (v){}, itemBuilder: (context) => [const PopupMenuItem(value: '1', child: Text('Cài đặt')), const PopupMenuItem(value: '2', child: Text('Đăng xuất'))])]), body: const Center(child: Text('Bấm vào nút 3 chấm góc phải trên cùng'))); }
}