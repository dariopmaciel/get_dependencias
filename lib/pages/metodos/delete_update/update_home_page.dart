import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get_dependencias/pages/metodos/delete_update/delete_controller.dart';
import 'package:get_dependencias/pages/metodos/delete_update/update_controller.dart';

class UpdateHomePage extends StatefulWidget {
  UpdateHomePage({super.key}) {
    Get.put(UpdateController(nome: 'Adicionado no inicio'));
    Get.put(DeleteController(nome: 'Adicionado no inicio'),permanent: true);
  }

  @override
  State<UpdateHomePage> createState() => _UpdateHomePageState();
}

class _UpdateHomePageState extends State<UpdateHomePage> {
  String nome = '';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: const Text('Update Home Page'),
        ),
        body: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text(nome),
              ElevatedButton(
                onPressed: () {
                  setState(() {
                    nome = Get.find<UpdateController>().nome;
                  });
                },
                child: const Text("Buscar Nome"),
              ),
              ElevatedButton(
                onPressed: () {
                  Get.replace(
                    UpdateController(nome: 'Alterado no CLICK do Botão'),
                  );
                },
                child: const Text("Alterando Instancia"),
              ),
              ElevatedButton(
                onPressed: () {
                  Get.delete<UpdateController>();
                },
                child: const Text("Removendo Instancia"),
              ),
              ElevatedButton(
                onPressed: () {
                  Get.offNamed('/metodos/delete');
                },
                child: const Text("Indo para Delete"),
              ),
            ],
          ),
        ));
  }
}
