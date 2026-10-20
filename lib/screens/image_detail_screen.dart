import 'package:flutter/material.dart';

class ImageDetailScreen extends StatelessWidget {
  const ImageDetailScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        title: const Text('Images', style: TextStyle(color: Colors.blue)),
        backgroundColor: Colors.white,
        iconTheme: const IconThemeData(color: Colors.blue),
        elevation: 0,
        centerTitle: true,
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(16.0),
          child: Column(
            children: [
              ClipRRect(
                borderRadius: BorderRadius.circular(12),
                child: Image.network(
                  'https://upload.wikimedia.org/wikipedia/commons/f/f3/Logo_UTH.png',
                  height: 200,
                  width: double.infinity,
                  fit: BoxFit.contain,
                  errorBuilder: (context, error, stackTrace) => Container(
                    height: 200, color: Colors.grey[300], child: const Center(child: Icon(Icons.image, size: 50)),
                  ),
                ),
              ),
              const SizedBox(height: 8),
              const Text(
                'https://t.cmx-cdn.com/giaothongvantaitphcm.edu.vn/wp-content/uploads/2024/06/ky-niem-36-nam-thanh-lap-truong-dai-hoc-giao-thong-van-tai-tphcm-560px.jpg',
                style: TextStyle(fontSize: 12, decoration: TextDecoration.underline),
                textAlign: TextAlign.center,
              ),
              const SizedBox(height: 32),

              ClipRRect(
                borderRadius: BorderRadius.circular(12),
                child: Image.asset(
                  'assets/images/uth.jpg',
                  height: 200,
                  width: double.infinity,
                  fit: BoxFit.cover,
                  errorBuilder: (context, error, stackTrace) => Container(
                    height: 200, color: Colors.grey[300], child: const Center(child: Text('Chưa có ảnh Asset')),
                  ),
                ),
              ),
              const SizedBox(height: 8),
              const Text('In app', style: TextStyle(fontSize: 14)),
            ],
          ),
        ),
      ),
    );
  }
}