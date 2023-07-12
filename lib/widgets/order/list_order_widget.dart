import 'package:flutter/material.dart';

import '../../const.dart';

class ListOrderWidget extends StatefulWidget {
  const ListOrderWidget({super.key});

  @override
  State<ListOrderWidget> createState() => _ListOrderWidgetState();
}

class _ListOrderWidgetState extends State<ListOrderWidget> {
  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      itemCount: 20,
      itemBuilder: (context, index) {
        return Padding(
          padding: const EdgeInsets.symmetric(vertical: 1, horizontal: 4),
          child: Card(
            shape: RoundedRectangleBorder(
              side: BorderSide(
                color: primaryColor,
              ),
            ),
            child: ListTile(
              onTap: () {},
              title: Text('รายการที่ ${index + 1}'),
            ),
          ),
        );
      },
    );
  }
}
