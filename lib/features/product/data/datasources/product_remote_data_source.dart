import 'dart:convert';

import 'package:figma_ecommerce_project/core/error/exception.dart';
import 'package:figma_ecommerce_project/core/utils/constants.dart';
import 'package:figma_ecommerce_project/features/product/data/models/product_model.dart';
import 'package:http/http.dart' as http;

abstract class ProductDataSource {
  Future<List<ProductModel>> getProduct();
}

class ProductDataSourceImpl extends ProductDataSource {
  final http.Client client;

  ProductDataSourceImpl({required this.client});

  @override
  getProduct() => _getProductFromUrl(productUrl);
  Future<List<ProductModel>> _getProductFromUrl(String url) async {
    final response = await http.get(
      Uri.parse(url),
    );
    if (response.statusCode == 200) {
      final jsonProduct = json.decode(response.body) as Map<String, dynamic>;
      List<ProductModel> list = [];
      ProductModel resposse = ProductModel.fromJson(jsonProduct);
      list.add(resposse);
      return list;
    } else {
      throw ServerException();
    }
  }
}
