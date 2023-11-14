import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';
import '../Controllers/PasswordController.dart';

class PasswordWidget extends StatelessWidget {
  final PasswordController _passwordController = Get.put(PasswordController());

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body:Obx(() =>  Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Padding(
            padding: const EdgeInsets.all(16.0),
            child: TextField(
              obscureText: !_passwordController.isPasswordVisible.value,
              decoration: InputDecoration(
                labelText: 'Password',
                suffixIcon: IconButton(
                  icon: Icon(
                    _passwordController.isPasswordVisible.value
                        ? Icons.visibility
                        : Icons.visibility_off,
                  ),
                  onPressed: () {
                    _passwordController.togglePasswordVisibility();
                  },
                ),
              ),
            ),
          ),
        ],
      ),
    ));
  }
}