import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get_dependencias/pages/metodos/delete_update/delete_controller.dart';


class DeletePage extends StatefulWidget {
  @override
  State<DeletePage> createState() => _DeletePageState();
}

class _DeletePageState extends State<DeletePage> {
  String nome = '';


@override
  void dispose() {
    //!mesmo permanete FORÇA remover da memoria
    Get.delete<DeleteController>(force: true);
    super.dispose();
  }

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
                    //!Dá erro pq não é permanente, pois remove da memoria
                    nome = Get.find<DeleteController>().nome;
                  });
                },
                child: const Text("Buscar Nome"),
              ),
            ],
          ),
        ));
  }
}
