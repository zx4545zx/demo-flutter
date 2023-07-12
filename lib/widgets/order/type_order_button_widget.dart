import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:restaurant_system/providers/order_provider.dart';

import '../../const.dart';

class TypeOrderButtonWidget extends StatefulWidget {
  const TypeOrderButtonWidget({super.key});

  @override
  State<TypeOrderButtonWidget> createState() => _TypeOrderButtonWidgetState();
}

class _TypeOrderButtonWidgetState extends State<TypeOrderButtonWidget> {

  @override
  Widget build(BuildContext context) {
    return (context.watch<OrderProvider>().typeOrder == 1)
        ? OutlinedButton.icon(
            onPressed: () => context.read<OrderProvider>().changeTypeOrder(2),
            icon: const Icon(Icons.chair),
            label: Text(
              "ทานที่ร้าน",
              style: defaultFont,
            ),
            style: OutlinedButton.styleFrom(
              textStyle: const TextStyle(fontSize: 15),
            ),
          )
        : (context.watch<OrderProvider>().typeOrder == 2) ? OutlinedButton.icon(
            onPressed: () => context.read<OrderProvider>().changeTypeOrder(0),
            icon: const Icon(Icons.motorcycle),
            label: Text(
              "สั่งกลับบ้าน",
              style: defaultFont,
            ),
            style: OutlinedButton.styleFrom(
              textStyle: const TextStyle(fontSize: 15),
            ),
          )
          : OutlinedButton.icon(
            onPressed: () => context.read<OrderProvider>().changeTypeOrder(1),
            icon: const Icon(Icons.search),
            label: Text(
              "กรุณาเลือก",
              style: defaultFont,
            ),
            style: OutlinedButton.styleFrom(
              textStyle: const TextStyle(fontSize: 15),
            ),
          );
  }
}
