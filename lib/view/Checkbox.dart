import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:get/get_state_manager/src/rx_flutter/rx_obx_widget.dart';

import '../Controllers/CheckboxController.dart';
 class CheckBox extends StatelessWidget {
  final CheckboxController _checkboxController = Get.put(CheckboxController());

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Checkbox Example'),
      ),
      body: Center(
        child: Padding(
          padding: const EdgeInsets.all(16.0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Obx(
                    () => CheckboxListTile(
                  title: Text('Check me'),
                  value: _checkboxController.isChecked.value,
                  onChanged: (value) {
                    _checkboxController.isChecked.value = value!;
                  },
                ),
              ),
              SizedBox(height: 20),
             Obx(() => Text('Checkbox State: ${_checkboxController.isChecked.value ? 'Checked' : 'Unchecked'}')) ,
            ],
          ),
        ),
      ),
    );
  }
}