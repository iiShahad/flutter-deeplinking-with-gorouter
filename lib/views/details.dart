import 'package:flutter/material.dart';

class DetailsScreen extends StatelessWidget {
  final int id;
  const DetailsScreen({super.key, required this.id});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Text("Details Screen, id: $id"),
      ),
    );
  }
}
