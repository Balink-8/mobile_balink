class Category {
  final DataCategory data;
  final String message;
  final bool status;

  Category({
    required this.data,
    required this.message,
    required this.status,
  });

  factory Category.fromJson(Map<String, dynamic> json) {
    return Category(
      data: DataCategory.fromJson(json['data']),
      message: json['message'],
      status: json['status'],
    );
  }
}

class DataCategory {
  final List<dynamic> data;
  final int dataShown;
  final int page;
  final int totalData;

  DataCategory({
    required this.data,
    required this.dataShown,
    required this.page,
    required this.totalData,
  });

  factory DataCategory.fromJson(Map<String, dynamic> json) {
    return DataCategory(
      data: json['data'],
      dataShown: json['data_shown'],
      page: json['page'],
      totalData: json['total_data'],
    );
  }
}
