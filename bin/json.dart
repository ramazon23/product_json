import 'dart:convert';

import 'package:http/http.dart';

import 'models/produkt_model.dart';

Future<void> main() async {
  Uri uri = Uri.parse('https://dummyjson.com/products');
  Response response = await get(uri);
  ProductsModel productsModel =
      ProductsModel.fromMap(jsonDecode(response.body));
  print(productsModel.products[0]);
}
