import 'package:factory_method/factory/entrega_moto.dart';
import 'package:factory_method/factory/entrega_interface.dart';
import 'package:factory_method/factory/entrega_bike.dart';

class EntregaFactory {
  static Future<void> entregar(double distancia) async {
    EntregaInterface _entregaInterface;

    if (distancia >= 15) {
      _entregaInterface = EntregaMoto();
    } else {
      _entregaInterface = EntregaBike();
    }

    _entregaInterface.entregar();
  }
}
