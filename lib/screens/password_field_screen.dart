import 'package:flutter/material.dart';

class PasswordFieldScreen extends StatefulWidget {
  const PasswordFieldScreen({super.key});

  @override
  State<PasswordFieldScreen> createState() => _PasswordFieldScreenState();
}

class _PasswordFieldScreenState extends State<PasswordFieldScreen> {
  bool _isObscured = true;
  String _password = '';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        title: const Text('Password Field', style: TextStyle(color: Colors.blue)),
        backgroundColor: Colors.white,
        iconTheme: const IconThemeData(color: Colors.blue),
        elevation: 0,
        centerTitle: true,
      ),
      body: Padding(
        padding: const EdgeInsets.all(24.0),
        child: Column(
          children: [
            const SizedBox(height: 50),
            TextField(
              obscureText: _isObscured,
              onChanged: (value) => setState(() => _password = value),
              decoration: InputDecoration(
                hintText: 'Nhập mật khẩu',
                border: const OutlineInputBorder(),
                // Nút con mắt ở cuối dòng để hiện/ẩn mật khẩu
                suffixIcon: IconButton(
                  icon: Icon(_isObscured ? Icons.visibility_off : Icons.visibility),
                  onPressed: () {
                    setState(() {
                      _isObscured = !_isObscured;
                    });
                  },
                ),
              ),
            ),
            const SizedBox(height: 20),
            Text('Độ dài mật khẩu: ${_password.length} ký tự', style: const TextStyle(color: Colors.red)),
          ],
        ),
      ),
    );
  }
}