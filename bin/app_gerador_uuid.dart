import 'dart:io';

import 'package:app_gerador_uuid/app_gerador_uuid.dart' as app_gerador_uuid;

void main(List<String> arguments) {
  stdout.write("Digite a quantidade de uuid");
  int quantidade = int.parse(stdin.readLineSync()!);

  List<String> lista = app_gerador_uuid.gerarListaUuid(quantidade);

  for (var item in lista) {
    print(item);
  }
}
