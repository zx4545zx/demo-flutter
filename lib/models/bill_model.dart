class Bill {
  int? billId;
  String? billType;
  int? billQuantity;
  int? billPrice;
  String? billName;
  int? billTableId;
  int? billLasttable;
  int? billReserId;
  int? billFoodprice;

  Bill({
    this.billId,
    this.billType,
    this.billQuantity,
    this.billPrice,
    this.billName,
    this.billTableId,
    this.billLasttable,
    this.billReserId,
    this.billFoodprice,
  });

  Bill.fromJson(Map<String, dynamic> json) {
    billId = json['bill_id'];
    billType = json['bill_type'];
    billQuantity = json['bill_quantity'];
    billPrice = json['bill_price'];
    billName = json['bill_name'];
    billTableId = json['bill_table_id'];
    billLasttable = json['bill_lasttable'];
    billReserId = json['bill_reser_id'];
    billFoodprice = json['bill_foodprice'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = <String, dynamic>{};
    data['bill_id'] = billId;
    data['bill_type'] = billType;
    data['bill_quantity'] = billQuantity;
    data['bill_price'] = billPrice;
    data['bill_name'] = billName;
    data['bill_table_id'] = billTableId;
    data['bill_lasttable'] = billLasttable;
    data['bill_reser_id'] = billReserId;
    data['bill_foodprice'] = billFoodprice;
    return data;
  }
}
