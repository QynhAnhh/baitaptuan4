import 'package:flutter/material.dart';
class PickerScreen extends StatefulWidget { const PickerScreen({super.key}); @override State<PickerScreen> createState() => _PState(); }
class _PState extends State<PickerScreen> {
  String _val = 'Mục 1';
  @override Widget build(BuildContext context) { return Scaffold(appBar: AppBar(title: const Text('Picker')), body: Center(child: DropdownButton<String>(value: _val, items: ['Mục 1', 'Mục 2', 'Mục 3'].map((e) => DropdownMenuItem(value: e, child: Text(e))).toList(), onChanged: (v) => setState(() => _val = v!)))); }
}