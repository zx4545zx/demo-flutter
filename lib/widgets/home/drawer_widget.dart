import 'package:flutter/material.dart';

class DrawerWidget extends StatelessWidget {
  const DrawerWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Drawer(
        child: ListView(
      children: [
        ListTile(
          leading: const Icon(Icons.list),
          title: const Text('บิลทั้งหมด'),
          onTap: () => Navigator.of(context).pop(),
        ),
        ListTile(
          leading: const Icon(Icons.list_alt),
          title: const Text('บิลที่ชำระเงินแล้ว'),
          onTap: () => Navigator.of(context).pop(),
        ),
        ListTile(
          leading: const Icon(Icons.chair),
          title: const Text('บริเวณ'),
          onTap: () => Navigator.of(context).pop(),
        ),
      ],
    ));
  }
}
