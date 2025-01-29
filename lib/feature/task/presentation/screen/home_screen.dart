import 'package:flutter/material.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Home Screen',
            style: Theme.of(context).textTheme.displayLarge),
      ),
      body: const Center(
        child: Text('Home Screen'),
      ),
    );
  }
}
