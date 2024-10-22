import 'package:flutter/material.dart';

class MetodosHomePage extends StatelessWidget {
  const MetodosHomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Métodos Home Page'),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            ElevatedButton(
              onPressed: () {
                Navigator.of(context).pushNamed('/metodos/put');
              },
              child: const Text('PUT'),
            ),
            ElevatedButton(
              onPressed: () {
                // Get.to(() => const BasicoHomePage());
                Navigator.of(context).pushNamed('/metodos/lazy');
              },
              child: const Text("Lazy Put"),
            ),
            ElevatedButton(
              onPressed: () {
                // Get.to(() => const BasicoHomePage());
                Navigator.of(context).pushNamed('/metodos/putAsync');
              },
              child: const Text("Put Async"),
            ),
            ElevatedButton(
              onPressed: () {
                // Get.to(() => const BasicoHomePage());
                Navigator.of(context).pushNamed('/metodos/create');
              },
              child: const Text("Create"),
            ),
            const SizedBox(height: 20),
            ElevatedButton(
              onPressed: () {
                // Get.to(() => const BasicoHomePage());
                Navigator.of(context).pushNamed('/metodos/delete_update');
              },
              child: const Text("Update & Delete"),
            ),
          ],
        ),
      ),
    );
  }
}
