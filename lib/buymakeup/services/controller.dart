import 'package:get/get.dart';
import '../services/api_service.dart';
import '../models/product_model.dart';

class AppController extends GetxController {
  var isLoading = true.obs;
  var productList = <Product>[].obs;

  @override
  void onInit() {
    fetchProducts();
    super.onInit();
  }

  void fetchProducts() async {
    try {
      isLoading(true);
      var productListTemp = await ApiService.getProducts();
      if (productListTemp != null) {
        productList(productListTemp);
      }
    } catch (e) {
      Get.snackbar('Error', e.toString());
    } finally {
      isLoading(false);
    }
  }
}
