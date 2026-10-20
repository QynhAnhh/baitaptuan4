import 'package:flutter/material.dart';
class DatePickerScreen extends StatefulWidget { const DatePickerScreen({super.key}); @override State<DatePickerScreen> createState() => _DState(); }
class _DState extends State<DatePickerScreen> {
  DateTime? _date;
  @override Widget build(BuildContext context) { return Scaffold(appBar: AppBar(title: const Text('DatePicker')), body: Center(child: Column(mainAxisAlignment: MainAxisAlignment.center, children: [ElevatedButton(onPressed: () async { DateTime? d = await showDatePicker(context: context, initialDate: DateTime.now(), firstDate: DateTime(2000), lastDate: DateTime(2100)); if (d != null) setState(() => _date = d); }, child: const Text('Chọn ngày')), const SizedBox(height: 20), Text(_date == null ? 'Chưa chọn' : 'Ngày: ${_date!.day}/${_date!.month}/${_date!.year}', style: const TextStyle(fontSize: 18))]))); }
}