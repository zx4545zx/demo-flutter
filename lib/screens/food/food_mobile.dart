import 'package:flutter/material.dart';

class FoodMobile extends StatefulWidget {
  const FoodMobile({super.key});

  @override
  State<FoodMobile> createState() => _FoodMobileState();
}

class _FoodMobileState extends State<FoodMobile> {
  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: Text('Foods'),
    );
  }
}