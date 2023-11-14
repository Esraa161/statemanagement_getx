import 'package:get/get.dart';

class SearchBarController extends GetxController {
  var isSearchMode = false.obs;

  void toggleSearchMode() {
    isSearchMode.toggle();
  }
}
