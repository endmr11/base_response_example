import 'dart:convert' as convert;
import 'dart:developer';

import 'package:base_response_example/data/models/base_response_model.dart';
import 'package:base_response_example/data/models/product_model.dart';
import 'package:base_response_example/data/models/user_model.dart';
import 'package:http/http.dart' as http;

class APIService {
  final String singlePath = "";
  final String arrayPath = "";

  Future<BaseSingleResponse<UserModel>?> fetchSingleData() async {
    final url = Uri.parse(singlePath);
    final response = await http.get(url);
    final baseResponse = BaseSingleResponse<UserModel>.fromJson(convert.jsonDecode(response.body), (data) => UserModel.fromJson(data));
    try {
      if (response.statusCode == 200) {
        return baseResponse;
      } else {
        log('${response.statusCode} ${response.statusCode}.', error: "Request failed with status");
      }
    } catch (e) {
      log('$e', error: "Request failed");
    }
  }

  Future<BaseListResponse<ProductModel>?> fetchArrayData() async {
    final url = Uri.parse(arrayPath);
    final response = await http.get(url);
    final baseListResponse =
        BaseListResponse<ProductModel>.fromJson(convert.jsonDecode(response.body), (data) => data.map((e) => ProductModel.fromJson(e)).toList());
    try {
      if (response.statusCode == 200) {
        return baseListResponse;
      } else {
        log('${response.statusCode} ${response.statusCode}.', error: "Request failed with status");
      }
    } catch (e) {
      log('$e', error: "Request failed");
    }
  }
}
