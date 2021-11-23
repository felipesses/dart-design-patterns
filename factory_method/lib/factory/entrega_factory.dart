import 'package:factory_method/factory/entrega_interface.dart';
import 'package:factory_method/factory/enum/entrega_enum.dart';

import 'entrega/entrega_bike.dart';
import 'entrega/entrega_moto.dart';

class EntregaFactory {
  static Future<Entrega> entregar(double distancia) async {
    EntregaInterface _entregaInterface;

    if (distancia >= 15.0) {
      _entregaInterface = EntregaMoto();
    } else {
      _entregaInterface = EntregaBike();
    }

    return _entregaInterface.entregar();
  }
}
