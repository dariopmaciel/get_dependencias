import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get_dependencias/pages/metodos/lazyPut/lazy_put_controller.dart';
import 'package:get_dependencias/pages/metodos/lazyPut/lazy_put_fenix_controller.dart';

class LazyPutPage extends StatefulWidget {
  LazyPutPage({super.key}) {
    //!inicialização Tardia conforme comparado com PUT que inicializa tudo ao se instanciar.
    //! o lazyPut não inicializa, somente quando demandado
    Get.lazyPut(() => LazyPutController());
    Get.lazyPut(() => LazyPutFenixController(), fenix: true); //! GUARDA A FACTORY e cada invocação uma nova fabrica
    // Get.put(LazyPutFenixController(), permanent: true);//! GUARDA A INSTANCIA, a classe.
  }

  @override
  State<LazyPutPage> createState() => _LazyPutPageState();
}

class _LazyPutPageState extends State<LazyPutPage> {
  String nome = '';
  String nomeFenix = '';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Lazy Put Page'),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text("Nome: $nome"),
            Text("NomeFenix: $nomeFenix"),
            ElevatedButton(
              //!O LazyPut somente é chamado (criado) quando invocado SOMENTE NA PRIMEIRA VEZ
              onPressed: () {
                final controller = Get.find<LazyPutController>();
                setState(() {
                  nome = controller.nome;
                });
              },
              child: const Text("Buscar nome"),
            ),
            ElevatedButton(
              onPressed: () {
                final controller = Get.find<LazyPutController>();
                controller.nome = 'Jornada Getx';
              },
              child: const Text("Alterar nome"),
            ),
//
            ElevatedButton(
              
              onPressed: () {
                final controller = Get.find<LazyPutFenixController>();
                setState(() {
                  nomeFenix = controller.nome;
                });
              },
              child: const Text("Buscar nome Fenix"),
            ),
            ElevatedButton(
              onPressed: () {
                final controller = Get.find<LazyPutFenixController>();
                controller.nome = 'Jornada Getx Fenix';
              },
              child: const Text("Alterar nome Fenix"),
            ),
          ],
        ),
      ),
    );
  }
}
