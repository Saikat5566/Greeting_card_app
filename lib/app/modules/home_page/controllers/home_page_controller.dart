import 'package:get/get.dart';

class HomePageController extends GetxController {
  RxBool isSelect = false.obs;

  void toggleSelect() {
    isSelect.value = !isSelect.value;
  }
}
