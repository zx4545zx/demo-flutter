import 'package:flutter/material.dart';

import '../../const.dart';

class SummaryWidget extends StatefulWidget {
  const SummaryWidget({super.key});

  @override
  State<SummaryWidget> createState() => _SummaryWidgetState();
}

class _SummaryWidgetState extends State<SummaryWidget> {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Column(
        children: [
          const Row(
            children: [
              Expanded(
                child: Align(
                  alignment: Alignment.centerLeft,
                  child: Text('ราคาอาหาร'),
                ),
              ),
              Text('0 บาท')
            ],
          ),
          const Row(
            children: [
              Expanded(
                child: Align(
                  alignment: Alignment.centerLeft,
                  child: Text('ค่าบริการ'),
                ),
              ),
              Text('0 บาท')
            ],
          ),
          const Row(
            children: [
              Expanded(
                child: Align(
                  alignment: Alignment.centerLeft,
                  child: Text('vat 7 %'),
                ),
              ),
              Text('0 บาท')
            ],
          ),
          const SizedBox(
            height: 8,
          ),
          Row(
            children: [
              Expanded(
                child: OutlinedButton.icon(
                  onPressed: () => {},
                  icon: const Icon(Icons.delete),
                  label: Text(
                    "ล้างทั้งหมด",
                    style: defaultFont,
                  ),
                  style: OutlinedButton.styleFrom(
                    textStyle: const TextStyle(fontSize: 15),
                  ),
                ),
              ),
              const SizedBox(
                width: 8,
              ),
              OutlinedButton.icon(
                onPressed: () => {},
                icon: const Icon(Icons.more_vert),
                label: Text(
                  "อื่นๆ",
                  style: defaultFont,
                ),
                style: OutlinedButton.styleFrom(
                  textStyle: const TextStyle(fontSize: 15),
                ),
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
                  onPressed: () => {},
                  icon: const Icon(Icons.save),
                  label: Text(
                    "บันทึก",
                    style: defaultFont,
                  ),
                  style: OutlinedButton.styleFrom(
                    textStyle: const TextStyle(fontSize: 15),
                  ),
                ),
              ),
              const SizedBox(
                width: 8,
              ),
              Expanded(
                child: OutlinedButton.icon(
                  onPressed: () => {},
                  icon: const Icon(Icons.payment),
                  label: Text(
                    "ชำระเงิน",
                    style: defaultFont,
                  ),
                  style: OutlinedButton.styleFrom(
                    textStyle: const TextStyle(fontSize: 15),
                  ),
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
