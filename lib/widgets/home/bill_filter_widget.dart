import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import '../../const.dart';
import '../../providers/order_provider.dart';

class BillFilterWidget extends StatefulWidget {
  const BillFilterWidget({super.key});

  @override
  State<BillFilterWidget> createState() => _BillFilterWidgetState();
}

class _BillFilterWidgetState extends State<BillFilterWidget> {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 12),
      child: Row(
        children: [
          Expanded(
            child: OutlinedButton(
              style: ButtonStyle(
                backgroundColor: context.watch<OrderProvider>().typeOrder == 0
                    ? MaterialStateProperty.all(primaryColor)
                    : null,
              ),
              onPressed: () {
                context.read<OrderProvider>().changeTypeOrder(0);
              },
              child: Text(
                'ทั้งหมด',
                style: context.watch<OrderProvider>().typeOrder == 0
                    ? const TextStyle(color: Colors.white)
                    : null,
              ),
            ),
          ),
          const SizedBox(
            width: 4,
          ),
          Expanded(
            child: OutlinedButton(
              style: ButtonStyle(
                backgroundColor: context.watch<OrderProvider>().typeOrder == 1
                    ? MaterialStateProperty.all(primaryColor)
                    : null,
              ),
              onPressed: () {
                context.read<OrderProvider>().changeTypeOrder(1);
              },
              child: Text(
                'ทานที่ร้าน',
                style: context.watch<OrderProvider>().typeOrder == 1
                    ? const TextStyle(color: Colors.white)
                    : null,
              ),
            ),
          ),
          const SizedBox(
            width: 4,
          ),
          Expanded(
            child: OutlinedButton(
              style: ButtonStyle(
                backgroundColor: context.watch<OrderProvider>().typeOrder == 2
                    ? MaterialStateProperty.all(primaryColor)
                    : null,
              ),
              onPressed: () {
                context.read<OrderProvider>().changeTypeOrder(2);
              },
              child: Text(
                'สั่งกลับบ้าน',
                style: context.watch<OrderProvider>().typeOrder == 2
                    ? const TextStyle(color: Colors.white)
                    : null,
              ),
            ),
          ),
        ],
      ),
    );
  }
}
