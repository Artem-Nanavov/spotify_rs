import 'package:http/http.dart' as http;
import 'dart:convert';

import 'type.dart';

Future<ProductDetail> getDetails(String url) async {
  http.Response response = await http.get(Uri.parse(url));

  if (response.statusCode == 200) {
    return ProductDetail.fromJson(jsonDecode(response.body));
  } else {
    throw Exception('Failed to load album');
  }
}
