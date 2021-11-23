import 'package:factory_method/factory/entrega_interface.dart';
import 'package:factory_method/factory/enum/entrega_enum.dart';

class EntregaMoto implements EntregaInterface {
  @override
  entregar() {
    Entrega entrega = Entrega.MOTO;
    return entrega;
  }
}
