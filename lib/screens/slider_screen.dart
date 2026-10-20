import 'package:flutter/material.dart';
class SliderScreen extends StatefulWidget { const SliderScreen({super.key}); @override State<SliderScreen> createState() => _SState(); }
class _SState extends State<SliderScreen> {
  double _val = 50;
  @override Widget build(BuildContext context) { return Scaffold(appBar: AppBar(title: const Text('Slider')), body: Center(child: Column(mainAxisAlignment: MainAxisAlignment.center, children: [Slider(value: _val, min: 0, max: 100, divisions: 100, label: _val.round().toString(), onChanged: (v) => setState(() => _val = v)), Text('Giá trị: ${_val.round()}', style: const TextStyle(fontSize: 20))]))); }
}