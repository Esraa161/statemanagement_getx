import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:get/get_state_manager/src/rx_flutter/rx_obx_widget.dart';
import '../Controllers/RadioButtonController.dart';

class RadioButton extends StatelessWidget {
  final controller = Get.put(RadioButtonController());

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Radio Buttons'),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Obx(() => RadioListTile(
              title: Text('Option 1'),
              value: 1,
              groupValue: controller.selectedValue.value,
              onChanged: (value) {
                controller.updateSelectedValue(value!);
              },
            )),
            Obx(() => RadioListTile(
              title: Text('Option 2'),
              value: 2,
              groupValue: controller.selectedValue.value,
              onChanged: (value) {
                controller.updateSelectedValue(value!);
              },
            )),
            Obx(() => RadioListTile(
              title: Text('Option 3'),
              value: 3,
              groupValue: controller.selectedValue.value,
              onChanged: (value) {
                controller.updateSelectedValue(value!);
              },
            )),
          ],
        ),
      ),
    );
  }
}
