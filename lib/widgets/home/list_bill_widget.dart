import 'package:flutter/material.dart';
import 'package:restaurant_system/const.dart';

class ListBillWidget extends StatefulWidget {
  const ListBillWidget({super.key});

  @override
  State<ListBillWidget> createState() => _ListBillWidgetState();
}

class _ListBillWidgetState extends State<ListBillWidget> {
  void targetBill(int index) {
    final snackBar = SnackBar(
      content: Text('Yay! A SnackBar! ID: ${index + 1}'),
      action: SnackBarAction(
        label: 'ปิด',
        onPressed: () {},
      ),
    );

    ScaffoldMessenger.of(context).showSnackBar(snackBar);
  }

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      shrinkWrap: true,
      physics: const ScrollPhysics(),
      controller: ScrollController(),
      itemCount: 20,
      itemBuilder: (context, index) {
        return Padding(
          padding: const EdgeInsets.symmetric(vertical: 4, horizontal: 4),
          child: Card(
            shape: RoundedRectangleBorder(
              side: BorderSide(
                color: primaryColor,
              ),
            ),
            child: ListTile(
              onTap: () => targetBill(index),
              title: Column(
                
                children: [
                  // header
                  Row(
                    children: [
                      Expanded(
                        child: Text('โซนริมน้ำ - โต๊ะ ${index + 1}'),
                      ),
                      const Row(
                        children: [
                          Text('2'),
                          SizedBox(
                            width: 8,
                          ),
                          Icon(Icons.people_alt)
                        ],
                      ),
                    ],
                  ),
                  // divider
                  const Divider(
                    height: 12,
                  ),
                  // body
                  const Column(
                    children: [
                      Row(
                        children: [
                          Expanded(
                            child: Row(
                              children: [
                                Icon(Icons.food_bank),
                                SizedBox(
                                  width: 8,
                                ),
                                Text('ทานที่ร้าน'),
                              ],
                            ),
                          ),
                          Align(
                            alignment: Alignment.centerRight,
                            child: Row(
                              children: [
                                Icon(Icons.money),
                                SizedBox(
                                  width: 8,
                                ),
                                Text('200 บาท'),
                              ],
                            ),
                          ),
                        ],
                      ),
                      Row(
                        children: [
                          Icon(Icons.lock_clock),
                          SizedBox(
                            width: 8,
                          ),
                          Text('20:03 น.'),
                        ],
                      ),
                    ],
                  ),
                  Row(
                    children: [
                      Expanded(
                        child: OutlinedButton(
                          style: ButtonStyle(
                            backgroundColor:
                                MaterialStateProperty.all(Colors.white),
                          ),
                          child: const Text('ชำระเงิน'),
                          onPressed: () {},
                        ),
                      ),
                      const SizedBox(
                        width: 12,
                      ),
                      Expanded(
                        child: OutlinedButton(
                          style: ButtonStyle(
                            backgroundColor:
                                MaterialStateProperty.all(Colors.white),
                          ),
                          child: const Text('ดูบิล'),
                          onPressed: () => targetBill(index),
                        ),
                      )
                    ],
                  )
                ],
              ),
            ),
          ),
        );
      },
    );
  }
}
