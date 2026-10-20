import 'package:flutter/material.dart';
class RadioButtonScreen extends StatefulWidget { const RadioButtonScreen({super.key}); @override State<RadioButtonScreen> createState() => _RState(); }
class _RState extends State<RadioButtonScreen> {
  int _group = 1;
  @override Widget build(BuildContext context) { return Scaffold(appBar: AppBar(title: const Text('RadioButton')), body: Column(children: [RadioListTile(title: const Text('Lựa chọn 1'), value: 1, groupValue: _group, onChanged: (v) => setState(() => _group = v as int)), RadioListTile(title: const Text('Lựa chọn 2'), value: 2, groupValue: _group, onChanged: (v) => setState(() => _group = v as int))])); }
}