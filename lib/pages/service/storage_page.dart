import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get_dependencias/pages/service/storage_service.dart';

class StoragePage extends StatelessWidget {
  const StoragePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Service'),
      ),
      body: Center(
          child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [Text(Get.find<StorageService>().getValue('service'))],
      )),
    );
  }
}
