import 'package:flutter/material.dart';
class CheckboxScreen extends StatefulWidget { const CheckboxScreen({super.key}); @override State<CheckboxScreen> createState() => _CState(); }
class _CState extends State<CheckboxScreen> {
  bool _isChecked = false;
  @override Widget build(BuildContext context) { return Scaffold(appBar: AppBar(title: const Text('Checkbox')), body: Center(child: CheckboxListTile(title: const Text('Đồng ý điều khoản'), value: _isChecked, onChanged: (v) => setState(() => _isChecked = v!)))); }
}