import 'package:flutter/material.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          'EMR',
        ),
      ),
      body: Padding(
        padding: const EdgeInsets.only(left: 10),
        child: Column(
          children: [Text('Electronic Medical Records ')],
        ),
      ),
    );
  }
}
