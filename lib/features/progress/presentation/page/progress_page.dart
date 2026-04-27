import 'package:flutter/material.dart';

class ProgressPage extends StatelessWidget {
  const ProgressPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        surfaceTintColor: Colors.transparent,
        title: Text(
          'Your Progress',
          style: Theme.of(context).textTheme.bodyMedium,
        ),
        toolbarHeight: 46,
      ),
      body: Center(child: const Text("Will be soon...")),
    );
  }
}
