import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get_dependencias/pages/basico/basico_home_page.dart';
import 'package:get_dependencias/pages/home_page.dart';
import 'package:get_dependencias/pages/metodos/bindings/bindings_controller.dart';
import 'package:get_dependencias/pages/metodos/bindings/bindings_exemplo.dart';
import 'package:get_dependencias/pages/metodos/bindings/home_bindings.dart';
import 'package:get_dependencias/pages/metodos/create/create_home_page.dart';
import 'package:get_dependencias/pages/metodos/delete_update/delete_page.dart';
import 'package:get_dependencias/pages/metodos/delete_update/update_home_page.dart';
import 'package:get_dependencias/pages/metodos/lazyPut/lazy_put_page.dart';
import 'package:get_dependencias/pages/metodos/metodos_home_page.dart';
import 'package:get_dependencias/pages/metodos/put/put_page.dart';
import 'package:get_dependencias/pages/metodos/putAsync/put_async_page.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});
  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primaryColor: Colors.blue,
        // colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: false,
      ),
      getPages: [
        GetPage(name: '/', page: () => HomePage()),
        GetPage(name: '/basico', page: () => BasicoHomePage()),
        GetPage(
            name: '/metodos',
            page: () => const MetodosHomePage(),
            children: [
              GetPage(name: '/put', page: () => const PutPage()),
              GetPage(name: '/lazy', page: () => LazyPutPage()),
              GetPage(name: '/putAsync', page: () => PutAsyncPage()),
              GetPage(name: '/create', page: () => CreateHomePage()),
              GetPage(name: '/update', page: () => UpdateHomePage()),
              GetPage(name: '/delete', page: () => DeletePage()),
            ]),
        GetPage(
          name: '/bindings', //classe para carregar mais de uma classe
          binding: BindingsExemplo(),
          page: () => const HomeBindings(),
        ),
        GetPage(
          name: '/bindings_builder', //não precisa criar outra classe para carregar dentro da rota
          binding: BindingsBuilder(() {
            Get.put(
              BindingsController(
                  nome: 'Inicializado dentro do Bindings Builder'),
            );
          }),
          page: () => const HomeBindings(),
        ),
        GetPage(
          name: '/bindings_builder_put', //passa a instancia e automaticamente disponibiliza o get.put
          binding: BindingsBuilder.put(
            () => BindingsController(
                nome: 'Inicializado dentro do BindingsBuilderPut'),
          ),
          page: () => const HomeBindings(),
        ),
      ],
    );
  }
}
