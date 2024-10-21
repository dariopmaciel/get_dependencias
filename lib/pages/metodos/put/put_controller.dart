
class PutController {
  String timesTamp= DateTime.now().toIso8601String();

  PutController(){
     print("PutController Instanciado -> $timesTamp");
  }
}