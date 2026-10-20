import 'package:flutter/material.dart';
import 'components_list_screen.dart';

class WelcomeScreen extends StatelessWidget {
  const WelcomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            // Em bổ sung widget Image chứa logo vào đây sau nhé
            const Text('UI Components', style: TextStyle(fontWeight: FontWeight.bold, fontSize: 24)),
            const SizedBox(height: 16),
            const Padding(
              padding: EdgeInsets.symmetric(horizontal: 32.0),
              child: Text('Building native mobile applications.'),
            ),
            const SizedBox(height: 40),
            ElevatedButton(
              style: ElevatedButton.styleFrom(
                  backgroundColor: Colors.blue,
                  shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(20)),
                  padding: const EdgeInsets.symmetric(horizontal: 40, vertical: 12)
              ),
              onPressed: () {
                // Lệnh điều hướng sang màn hình 2
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => const ComponentsListScreen()),
                );
              },
              child: const Text('I\'m ready', style: TextStyle(color: Colors.white)),
            )
          ],
        ),
      ),
    );
  }
}