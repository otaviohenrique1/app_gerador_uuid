import 'package:uuid/uuid.dart';

List<String> gerarListaUuid(int quantidade) {
  List<String> lista = [];
  var uuid = Uuid();
  for (var i = 0; i < quantidade; i++) {
    lista.add(uuid.v4());
  }
  return lista;
}
