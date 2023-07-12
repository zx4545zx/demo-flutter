import 'package:flutter/material.dart';

class SettingMobile extends StatefulWidget {
  const SettingMobile({super.key});

  @override
  State<SettingMobile> createState() => _SettingMobileState();
}

class _SettingMobileState extends State<SettingMobile> {
  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: Text('Setting'),
    );
  }
}