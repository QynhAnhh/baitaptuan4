import 'package:flutter/material.dart';

class ToggleScreen extends StatefulWidget {
  const ToggleScreen({super.key});

  @override
  State<ToggleScreen> createState() => _ToggleScreenState();
}

class _ToggleScreenState extends State<ToggleScreen> {
  bool _isSwitchedOn = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        title: const Text('Toggle (Switch)', style: TextStyle(color: Colors.blue)),
        backgroundColor: Colors.white,
        iconTheme: const IconThemeData(color: Colors.blue),
        elevation: 0,
        centerTitle: true,
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Icon(
              _isSwitchedOn ? Icons.lightbulb : Icons.lightbulb_outline,
              size: 100,
              color: _isSwitchedOn ? Colors.yellow[700] : Colors.grey,
            ),
            const SizedBox(height: 20),
            Switch(
              value: _isSwitchedOn,
              activeColor: Colors.blue,
              onChanged: (bool value) {
                setState(() {
                  _isSwitchedOn = value;
                });
              },
            ),
            Text(
              _isSwitchedOn ? 'Đang BẬT' : 'Đang TẮT',
              style: const TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
            )
          ],
        ),
      ),
    );
  }
}