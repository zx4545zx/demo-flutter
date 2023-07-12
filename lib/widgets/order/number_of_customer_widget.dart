import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:provider/provider.dart';

import '../../providers/order_provider.dart';

class NumberOfCustomerWidget extends StatefulWidget {
  const NumberOfCustomerWidget({super.key});

  @override
  State<NumberOfCustomerWidget> createState() => _NumberOfCustomerWidgetState();
}

class _NumberOfCustomerWidgetState extends State<NumberOfCustomerWidget> {
  final TextEditingController _valueController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    _valueController.text = '${context.watch<OrderProvider>().customerValue}';
    _valueController.selection = TextSelection.fromPosition(
      TextPosition(
        offset: _valueController.text.length,
      ),
    );

    return Row(
      children: [
        Expanded(
          child: IconButton(
            onPressed: () {
              context.read<OrderProvider>().removeCustomer();
            },
            icon: const Icon(Icons.remove_circle_outline),
          ),
        ),
        Expanded(
          child: TextField(
            controller: _valueController,
            onChanged: (value) {
              context.read<OrderProvider>().insertCustomer(value);
            },
            decoration: const InputDecoration(
              suffixIcon: Icon(
                Icons.people_alt_outlined,
              ),
              suffixIconConstraints: BoxConstraints(
                minHeight: 10,
                minWidth: 10,
              ),
              hintText: "0",
            ),
            keyboardType: TextInputType.number,
            inputFormatters: <TextInputFormatter>[
              FilteringTextInputFormatter.digitsOnly
            ],
          ),
        ),
        Expanded(
          child: IconButton(
            onPressed: () {
              context.read<OrderProvider>().addCustomer();
            },
            icon: const Icon(
              Icons.add_circle_outline,
            ),
          ),
        ),
      ],
    );
  }
}
