import 'package:factory_method/factory/entrega_interface.dart';

class EntregaMoto implements EntregaInterface {
  @override
  void entregar() {
    print('Distancia maior ou igual a 15km, entrega será de moto...');
  }
}
