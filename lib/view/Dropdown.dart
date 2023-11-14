import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';

import '../Controllers/DropdownController.dart';
class Dropdown extends StatelessWidget {
  final DropdownController _dropdownController = Get.put(DropdownController());

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Dropdown TextField'),
      ),
      body: Center(
        child: Padding(
          padding: const EdgeInsets.all(16.0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Obx(() => DropdownButtonFormField(
                value: _dropdownController.selectedValue.value,
                items: _dropdownController.dropdownItems.map((item) {
                  return DropdownMenuItem(
                    value: item,
                    child: Text(item),
                  );
                }).toList(),
                onChanged: (value) {
                  _dropdownController.selectedValue.value = value.toString();
                },
                decoration: InputDecoration(
                  labelText: 'Select an option',
                  border: OutlineInputBorder(),
                ),
              )),
              SizedBox(height: 20),
              Text('Selected Value: ${_dropdownController.selectedValue.value}'),
            ],
          ),
        ),
      ),
    );
  }
}