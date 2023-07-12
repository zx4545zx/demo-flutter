import 'package:flutter/material.dart';
import 'package:restaurant_system/widgets/home/bill_filter_widget.dart';
import 'package:restaurant_system/widgets/home/list_bill_widget.dart';

import '../../widgets/home/drawer_widget.dart';

class HomeMobile extends StatefulWidget {
  const HomeMobile({super.key});

  @override
  State<HomeMobile> createState() => _HomeMobileState();
}

class _HomeMobileState extends State<HomeMobile> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      drawer: const DrawerWidget(),
      appBar: AppBar(
        bottom: const PreferredSize(
          preferredSize: Size.fromHeight(50),
          child: BillFilterWidget(),
        ),
        title: const Text('บิลทั้งหมด'),
        actions: [
          Padding(
              padding: const EdgeInsets.only(right: 20.0),
              child: GestureDetector(
                onTap: () {},
                child: OutlinedButton.icon(
                  onPressed: () {},
                  icon: const Icon(Icons.add),
                  label: const Text('เพิ่มบิล'),
                ),
              )),
        ],
      ),
      body: const Padding(
        padding: EdgeInsets.all(8.0),
        child: ListBillWidget(),
      ),
    );
  }
}
