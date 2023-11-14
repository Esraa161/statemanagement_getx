import 'package:get/get.dart';
import 'package:get/get_state_manager/src/simple/get_controllers.dart';

class RadioButtonController extends GetxController {
  var selectedValue = 0.obs;

  void updateSelectedValue(int value) {
    selectedValue.value = value;
  }
}