import 'dart:convert';
import 'package:http/http.dart' as http;
import '../models/product.dart';

class ApiService {
  static Future<List<Product>> fetchProducts() async {
    final response = await http.get(
      Uri.parse('https://wantapi.com/products.php'),
    );

    if (response.statusCode == 200) {
      final Map<String, dynamic> jsonData = jsonDecode(response.body);
      final List data = jsonData['data']; // <-- burada data alanı önemli
      return data.map((e) => Product.fromJson(e)).toList();
    } else {
      throw Exception("API yüklenemedi");
    }
  }
}
