import 'package:flutter/material.dart';
import 'package:get/get.dart';

import 'package:get_dependencias/pages/basico/basico_controller.dart';

class BasicoHomePage extends StatelessWidget {
  BasicoHomePage({super.key});

  // final controller = BasicoController();
  //!Gereniamento de dependencias com GET
  final controller = Get.put(BasicoController());

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Básico Home Page'),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            AnimatedBuilder(
              animation: controller,
              builder: (context, child) {
                return Text(
                  controller.nome,
                  style: Theme.of(context).textTheme.titleLarge,
                );
              },
            ),
            //!conversão para widget interno
            // ElevatedButton(
            //   onPressed: () => controller.alterarNome('Dario P MAciel'),
            //   child: const Text('Alterar'),
            // ),
            const WidgetInterno()
          ],
        ),
      ),
    );
  }
}

class WidgetInterno extends StatelessWidget {
  const WidgetInterno({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        const Text('Widget Interno'),
        const SizedBox(height: 20),
        ElevatedButton(
          // onPressed: () => controller.alterarNome('Dario P MAciel'),
          //!Gerenciamento de dependencia com GET
          onPressed: () =>
              Get.find<BasicoController>().alterarNome('Dario P MAciel'),
          child: const Text('Alterar Nome'),
        ),
      ],
    );
  }
}
