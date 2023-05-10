import 'package:uuid/uuid.dart';
import 'dart:io';

void geradorUuid() {
  print("----------------------------------------");
  print("Gerador de uuid v4");
  stdout.write("Digite a quantidade: ");
  int quantidade = int.parse(stdin.readLineSync()!);
  List<String> lista = gerarListaUuid(quantidade);
  for (var item in lista) {
    print(item);
  }
  print("----------------------------------------");
}

List<String> gerarListaUuid(int quantidade) {
  List<String> lista = [];
  var uuid = Uuid();
  for (var i = 0; i < quantidade; i++) {
    lista.add("${i + 1} => ${uuid.v4()}");
  }
  return lista;
}
