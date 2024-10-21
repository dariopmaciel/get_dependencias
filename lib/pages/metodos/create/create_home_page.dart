import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get_dependencias/pages/metodos/create/create_controller.dart';

class CreateHomePage extends StatefulWidget {
  CreateHomePage({super.key}) : super() {
    //! CRIA UMA NOVA INSTANCIA PARA CADA VEZ QUE É INVOCADO
    Get.create(() => CreateController());
    //! CRIA INSTANCIA 1X SÓ, RETORNADO A INSTANCIA QUE JÁ ESTÁ CRIADA
    Get.put(CreateController(), tag: 'put');
    Get.lazyPut(() => CreateController(), tag: 'lazy');
  }

  @override
  State<CreateHomePage> createState() => _CreateHomePageState();
}

class _CreateHomePageState extends State<CreateHomePage> {
  String nome = '';
  String nomePut = '';
  String nomeLazyPut = '';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Create HomePage'),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text('Nome: $nome'),
            Text('NomePut: $nomePut'),
            Text('NomeLazyPut: $nomeLazyPut'),
            ElevatedButton(
                onPressed: () {
                  setState(() {
                    nome = Get.find<CreateController>().nome;
                    nomePut = Get.find<CreateController>(tag: 'put').nome;
                    nomeLazyPut = Get.find<CreateController>(tag: 'lazy').nome;
                  });
                },
                child: const Text("Buscar nome")),
          ],
        ),
      ),
    );
  }
}
