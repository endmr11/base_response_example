class BaseSingleResponse<T> {
  bool? status;
  String? message;
  T? data;

  BaseSingleResponse({
    this.status,
    this.message,
    this.data,
  });

  factory BaseSingleResponse.fromJson(Map<String, dynamic> json, Function(Map<String, dynamic>) build) {
    return BaseSingleResponse<T>(status: json['status'], message: json['message'], data: build(json['data']));
  }
}

class BaseListResponse<T> {
  bool? status;
  String? message;
  List<T>? data;

  BaseListResponse({
    this.status,
    this.message,
    this.data,
  });

  factory BaseListResponse.fromJson(Map<String, dynamic> json, Function(List<dynamic>) build) {
    return BaseListResponse<T>(status: json['status'], message: json['message'], data: build(json['data']));
  }
}
