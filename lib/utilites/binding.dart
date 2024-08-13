import 'package:ecommerce_checkout/view_model/authViewModel.dart';
import 'package:get/get.dart';

class HomeBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut(() => AuthModelView());
  }
}
