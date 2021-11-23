import 'package:factory_method/factory/entrega_interface.dart';
import 'package:factory_method/factory/enum/entrega_enum.dart';

class EntregaBike implements EntregaInterface {
  @override
  entregar() {
    Entrega entrega = Entrega.BIKE;
    return entrega;
  }
}
