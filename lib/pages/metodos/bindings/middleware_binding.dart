import 'package:get/get.dart';

class MiddlewareBinding extends GetMiddleware {
  //!EXECUTADO LOGO ANTES DA CHAMADA DA PÁGINA!!!!
  @override
  List<Bindings>? onBindingsStart(List<Bindings>? bindings) {
    print('>> onBindingsStart: ${onBindingsStart}');
    // bindings?.add(BindingsBuilder.put(() => 'Novo Binding!!!'));
    return super.onBindingsStart(bindings);
  }

  //!EXECUTADO LOGO DEPOIS QUE OS BINDINGS FORAM EXECUTADOS
  @override
  GetPageBuilder? onPageBuildStart(GetPageBuilder? page) {
    print('>> onBindingsStart: ${onBindingsStart}');
    return super.onPageBuildStart(page);
  }
}
