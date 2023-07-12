import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:restaurant_system/providers/order_provider.dart';
import 'package:restaurant_system/widgets/order/list_order_widget.dart';
import 'package:restaurant_system/widgets/order/number_of_customer_widget.dart';
import 'package:restaurant_system/widgets/order/summary_widget.dart';
import 'package:restaurant_system/widgets/order/type_order_button_widget.dart';

class OrderMobile extends StatefulWidget {
  const OrderMobile({super.key});

  @override
  State<OrderMobile> createState() => _OrderMobileState();
}

class _OrderMobileState extends State<OrderMobile> {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Center(
          child: Text('สรุปรายการ'),
        ),
      ),
      body: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Column(
          children: [
            const Row(
              children: [
                Expanded(
                  child: TypeOrderButtonWidget(),
                ),
                SizedBox(
                  width: 8,
                ),
                Expanded(
                  child: NumberOfCustomerWidget(),
                ),
              ],
            ),
            const SizedBox(
              height: 8,
            ),
            Row(
              children: [
                Expanded(
                  child: OutlinedButton.icon(
                    onPressed: () => {
                      context.read<OrderProvider>().changeTables(2, 'A2')
                    },
                    icon: const Icon(Icons.chair),
                    label: Text(context.watch<OrderProvider>().tablesName),
                    style: OutlinedButton.styleFrom(
                      textStyle: const TextStyle(fontSize: 15),
                    ),
                  ),
                ),
              ],
            ),
            const Divider(
              height: 20,
              color: Colors.grey,
              thickness: 1,
              indent: 10,
              endIndent: 10,
            ),
            const Expanded(
              child: ListOrderWidget(),
            ),
            const SummaryWidget(),
          ],
        ),
      ),
    );
  }
}
