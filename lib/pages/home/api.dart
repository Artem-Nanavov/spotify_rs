import 'package:http/http.dart' as http;
import 'dart:convert';

import 'type.dart';

Future<List<Product>> getProducts(String url) async {
  http.Response response = await http.get(Uri.parse(url));
  List responseJson = json.decode(response.body);

  return responseJson.map((m) => Product.fromJson(m)).toList();
}
