//! Teoricamente toda classe add aqui fica por dentro da aplicação
import 'package:get/get.dart';
import 'package:get_dependencias/pages/initialBinding/auth_model.dart';

class InitialBinding implements Bindings {
  @override
  void dependencies() {
    Get.put(
      AuthModel(
        name: 'Dario P Maciel',
        email: 'dariodepaulamaciel@hotmail.com',
        curso: 'Jornada GetX',
      ),
      //!Garantia de que não sera deletado
      permanent: true,
    );
  }
}
