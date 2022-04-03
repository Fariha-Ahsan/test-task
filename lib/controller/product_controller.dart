import 'package:get/state_manager.dart';
import 'package:test_task/models/product.dart';
import 'package:test_task/services/remote_services.dart';

class ProductController extends GetxController{
  var isLoading=true.obs;
  var listOfProducts = <ProductElement>[].obs;

  @override
  void onInit(){
    fetchProducts();
    super.onInit();
  }
  void fetchProducts()async{
    isLoading(true);
    try {
      var products=RemoteServices().getData();
      if (products!=null){
        listOfProducts.value=products as List<ProductElement>;
      }
    } finally {
      isLoading(false);
    }

  }
}