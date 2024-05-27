import 'package:flutter/material.dart';
class Registrasi extends StatelessWidget {
  const Registrasi({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        title: 
      
        const Text('Soon!'),
        backgroundColor: Colors.white,
        foregroundColor: Colors.red,
        
      ),
      body: Center(
        
        child: ElevatedButton(
          onPressed: () {
            Navigator.pop(context);
          },
          child: const Text('Go back!'),
        ),
      ),
    );
  }
}