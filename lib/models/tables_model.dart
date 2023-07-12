class Tables {
  int? tableId;
  String? tableName;
  int? tableSize;
  String? tableTableimg;
  String? tableStatus;
  int? tableZoneId;

  Tables({
    this.tableId,
    this.tableName,
    this.tableSize,
    this.tableTableimg,
    this.tableStatus,
    this.tableZoneId,
  });

  Tables.fromJson(Map<String, dynamic> json) {
    tableId = json['table_id'];
    tableName = json['table_name'];
    tableSize = json['table_size'];
    tableTableimg = json['table_tableimg'];
    tableStatus = json['table_status'];
    tableZoneId = json['table_zone_id'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = <String, dynamic>{};
    data['table_id'] = tableId;
    data['table_name'] = tableName;
    data['table_size'] = tableSize;
    data['table_tableimg'] = tableTableimg;
    data['table_status'] = tableStatus;
    data['table_zone_id'] = tableZoneId;
    return data;
  }
}
