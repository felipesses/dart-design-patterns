import 'package:prototype/cliente.dart';

void run() {
  var cliente1 = Cliente();
  var cliente2 = cliente1.clone();

  print(cliente2.nome);
}
