import 'package:prototype/prototype_interface.dart';

class Cliente implements PrototypeInterface<Cliente> {
  String? nome;
  DateTime? dataNasc;
  String? _cpf;

  Cliente._();

  factory Cliente() {
    var c = Cliente._();

    c.nome = 'Felipe';
    c.dataNasc = DateTime.now();
    c._cpf = '024294724';
    return c;
  }

  @override
  Cliente clone() {
    var c = Cliente();
    c.nome = nome;
    c.dataNasc = dataNasc;
    c._cpf = _cpf;
    return c;
  }
}
