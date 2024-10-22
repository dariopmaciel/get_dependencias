import 'package:get/get.dart';
import 'package:get_dependencias/pages/metodos/bindings/bindings_controller.dart';

class BindingsExemplo extends Bindings {
  BindingsExemplo() {
    print(">>>Iniciando Bindings Exemplo");
  }

  @override
  void dependencies() {
    print(">>>Carregando as intancias");
    Get.put(BindingsController(nome: 'Inicializado dentro do Bindings'));
  }
}
