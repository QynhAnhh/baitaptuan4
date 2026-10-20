import 'package:flutter/material.dart';

class RowLayoutScreen extends StatelessWidget {
  const RowLayoutScreen({super.key});

  Widget _buildBox(Color color) {
    return Container(
      width: 100,
      height: 60,
      decoration: BoxDecoration(
        color: color,
        borderRadius: BorderRadius.circular(8),
      ),
    );
  }

  Widget _buildRow(Color c1, Color c2, Color c3) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 8.0),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [_buildBox(c1), _buildBox(c2), _buildBox(c3)],
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        title: const Text('Row Layout', style: TextStyle(color: Colors.blue)),
        backgroundColor: Colors.white,
        iconTheme: const IconThemeData(color: Colors.blue),
        elevation: 0,
        centerTitle: true,
      ),
      body: Padding(
        padding: const EdgeInsets.only(top: 32.0),
        child: Column(
          children: [
            _buildRow(Colors.blue[200]!, Colors.blue[600]!, Colors.blue[200]!),
            _buildRow(Colors.blue[200]!, Colors.blue[500]!, Colors.blue[200]!),
            _buildRow(Colors.blue[200]!, Colors.blue[400]!, Colors.blue[200]!),
            _buildRow(Colors.blue[200]!, Colors.blue[600]!, Colors.blue[200]!),
          ],
        ),
      ),
    );
  }
}