import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get_dependencias/pages/metodos/bindings/bindings_controller.dart';

class HomeBindings extends StatelessWidget {
  const HomeBindings({super.key});

  @override
  Widget build(BuildContext context) {
    print(">>>Buildando nossa pagina com Bindings");
    return Scaffold(
      appBar: AppBar(
        title: const Text('Home Bindings'),
      ),
      body: Center(
          child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Text(Get.find<BindingsController>().nome),
          // Text(Get.find<String>()),//pega o novo binding
        ],
      )),
    );
  }
}
