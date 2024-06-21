import 'package:findmua/buymakeup/models/product_model.dart';
import 'package:http/http.dart' as http;

class ApiService {
  static var client = http.Client();
  static const url =
      "http://makeup-api.herokuapp.com/api/v1/products.json?brand=maybelline";

  static Future<List<Product>?> getProducts() async {
    try {
      var response = await client.get(Uri.parse(url));
      if (response.statusCode == 200) {
        var jsonString = response.body;
        print('Response body: $jsonString'); // Tambahkan log untuk melihat respons
        return productModelFromJson(jsonString);
      } else {
        throw Exception("Failed to load products: ${response.statusCode}");
      }
    } catch (e) {
      print('Exception: $e'); // Tambahkan log untuk melihat pengecualian
      throw Exception("Failed to fetch products: $e");
    }
  }
}
