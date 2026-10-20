import 'package:flutter/material.dart';
class CardScreen extends StatelessWidget {
  const CardScreen({super.key});
  @override Widget build(BuildContext context) { return Scaffold(appBar: AppBar(title: const Text('Card')), body: const Padding(padding: EdgeInsets.all(16.0), child: Card(elevation: 4, child: ListTile(title: Text('Thẻ nổi (Card)'), subtitle: Text('Bao bọc nội dung và đổ bóng viền'))))); }
}