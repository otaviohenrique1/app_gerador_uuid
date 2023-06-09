import 'package:intl/intl.dart';
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

void geradorDataHoraFormatada() {
  print("----------------------------------------");
  print("Gerador de data e hora formatada");
  stdout.write("Digite a quantidade: ");
  int quantidade = int.parse(stdin.readLineSync()!);
  List<String> lista = gerarListaDataHoraFormatada(quantidade);
  for (var item in lista) {
    print(item);
  }
  print("----------------------------------------");
}

void geradorHoraFormatada() {
  print("----------------------------------------");
  print("Gerador de hora formatada");
  stdout.write("Digite a quantidade: ");
  int quantidade = int.parse(stdin.readLineSync()!);
  List<String> lista = geraListaHoraFormatada(quantidade);
  for (var item in lista) {
    print(item);
  }
  print("----------------------------------------");
}

void geradorDataFormatada() {
  print("----------------------------------------");
  print("Gerador de data formatada");
  stdout.write("Digite a quantidade: ");
  int quantidade = int.parse(stdin.readLineSync()!);
  List<String> lista = geraListaDataFormatada(quantidade);
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

List<String> gerarListaDataHoraFormatada(int quantidade) {
  List<String> lista = [];
  String dataHora = DateFormat('dd/MM/yyyy HH:mm:ss').format(DateTime.now());
  for (var i = 0; i < quantidade; i++) {
    lista.add("${i + 1} => $dataHora");
  }
  return lista;
}

List<String> geraListaHoraFormatada(int quantidade) {
  List<String> lista = [];
  String hora = DateFormat('HH:mm:ss').format(DateTime.now());
  for (var i = 0; i < quantidade; i++) {
    lista.add("${i + 1} => $hora");
  }
  return lista;
}

List<String> geraListaDataFormatada(int quantidade) {
  List<String> lista = [];
  String hora = DateFormat('dd/MM/yyyy').format(DateTime.now());
  for (var i = 0; i < quantidade; i++) {
    lista.add("${i + 1} => $hora");
  }
  return lista;
}
