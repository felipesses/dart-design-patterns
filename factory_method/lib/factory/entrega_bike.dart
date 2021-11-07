import 'package:factory_method/factory/entrega_interface.dart';

class EntregaBike implements EntregaInterface {
  @override
  void entregar() {
    print('Distancia menor que 15km, entrega será de bike...');
  }
}
