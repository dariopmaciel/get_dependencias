import 'package:flutter/material.dart';

class HomePage extends StatelessWidget {
  HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Home Page'),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            ElevatedButton(
              onPressed: () {
                // Get.to(() => const BasicoHomePage());
                Navigator.of(context).pushNamed('/basico');
              },
              child: const Text("Básico"),
            ),
            ElevatedButton(
              onPressed: () {
                // Get.to(() => const BasicoHomePage());
                Navigator.of(context).pushNamed('/metodos');
              },
              child: const Text("Métodos"),
            ),
            ElevatedButton(
              onPressed: () {
                // Get.to(() => const BasicoHomePage());
                Navigator.of(context).pushNamed('/bindings');
              },
              child: const Text("Bindings"),
            ),
             ElevatedButton(
              onPressed: () {
                // Get.to(() => const BasicoHomePage());
                Navigator.of(context).pushNamed('/bindings_builder');
              },
              child: const Text("Bindings Builder"),
            ),
             ElevatedButton(
              onPressed: () {
                // Get.to(() => const BasicoHomePage());
                Navigator.of(context).pushNamed('/bindings_builder_put');
              },
              child: const Text("Bindings Builder Put"),
            ),
          ],
        ),
      ),
    );
  }
}
