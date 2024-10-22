import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get_dependencias/pages/initialBinding/auth_model.dart';

class InitialBindingPage extends StatelessWidget {
  const InitialBindingPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(''),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(Get.find<AuthModel>().name),
            Text(Get.find<AuthModel>().email),
            Text(Get.find<AuthModel>().curso),
            
          ],
        ),
      ),
    );
  }
}
