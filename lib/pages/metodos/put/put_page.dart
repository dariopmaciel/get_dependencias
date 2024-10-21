import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get_dependencias/pages/metodos/put/put_controller.dart';
import 'package:get_dependencias/pages/metodos/put/put_controller_permanet.dart';
import 'package:get_dependencias/pages/metodos/put/put_controller_tag.dart';

class PutPage extends StatefulWidget {
  const PutPage({super.key});

  @override
  State<PutPage> createState() => _PutPageState();
}

class _PutPageState extends State<PutPage> {
  //! MATA ao sair da tela
  final controller = Get.put(PutController());
  //! NÃO mata ao sair da tela
  //! Mantem no motor esta variavel dentro das estruturas dele quando sair da tela
  final controller2 = Get.put(PutControllerPermanet(), permanent: true);
  final controller3 = Get.put(PutController());


  final controllerTagX = Get.put(PutControllerTag(tag: 'TagX'), tag: "TagX");
  final controllerTagY = Get.put(PutControllerTag(tag: 'TagY'), tag: "TagY");

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('PUT'),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            //!Pega a primeira vez o timesTamp foi criado
            Text('Time put: ${controller.timesTamp}'),
            Text('Time put: ${controller2.timesTamp}'),
            //!Pega a primeira vez o timesTamp foi criado
            //!mesmo sendo criado uma segunda vez para o WidgetInterno
            //!Para isto usar TAG
            const WidgetInterno(),
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
        // Text('${Get.find<PutController>().timesTamp}'),
        //!por sempre buscar a primeira controller deve-se usar TAG
        Text('${Get.find<PutControllerTag>(tag: 'TagX').tag}'),
        Text('${Get.find<PutControllerTag>(tag: 'TagY').tag}'),
      ],
    );
  }
}
