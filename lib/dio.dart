import 'package:dio/dio.dart';
import 'package:flutter_shop/ProductModel.dart';

class ConnectionDio {
  final Dio dio_ = Dio();
  int n = 8;
  Future<List<ProductModel>> getData() async {
    Response response =
        await Dio().get("https://fakestoreapi.com/products?limit=$n");
    final model =
        (response.data as List).map((e) => ProductModel.fromJson(e)).toList();
    return model;
  }

  void changeValuer(int change) {
    n = change;
  }
}
