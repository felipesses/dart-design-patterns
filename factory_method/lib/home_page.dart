import 'package:flutter/material.dart';

import 'factory/entrega_factory.dart';
import 'factory/enum/entrega_enum.dart';
import 'models/order_model.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  Future<Entrega> _entregar(double distancia) async {
    Entrega entrega;
    entrega = await EntregaFactory.entregar(distancia);
    _showEntregaDialog(entrega);
    return entrega;
  }

  _showEntregaDialog(Entrega entrega) {
    return showDialog(
        context: context,
        builder: (_) {
          return AlertDialog(
            title: Text('Pedido confirmado'),
            content: Column(
              mainAxisSize: MainAxisSize.min,
              children: [
                Center(
                  child: Text(
                    "A entrega será de ${entrega == Entrega.BIKE ? 'bicicleta' : 'moto'}",
                  ),
                ),
              ],
            ),
          );
        });
  }

  List<OrderModel> orderList = [
    OrderModel(
      id: '1',
      orderName: 'Pizza Grande',
      clientName: 'André',
      orderDistance: 8.0,
      orderPrice: 45.00,
    ),
    OrderModel(
      id: '2',
      orderName: 'Hambúrguer 300g',
      clientName: 'Felipe',
      orderDistance: 20.0,
      orderPrice: 35.00,
    ),
    OrderModel(
      id: '3',
      orderName: 'Pizza Média',
      clientName: 'Guilherme',
      orderDistance: 5.0,
      orderPrice: 40.00,
    ),
    OrderModel(
      id: '4',
      orderName: 'Hambúrguer 300g',
      clientName: 'Jéssica',
      orderDistance: 20.0,
      orderPrice: 35.00,
    ),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Pedidos'),
      ),
      body: Padding(
        padding: const EdgeInsets.all(16),
        child: ListView.separated(
          itemBuilder: (_, index) {
            OrderModel model = orderList[index];
            return Container(
              height: 100,
              width: double.infinity,
              child: InkWell(
                onTap: () {
                  _entregar(model.orderDistance);
                },
                child: Container(
                  padding: EdgeInsets.all(16),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            model.orderName,
                            style: TextStyle(
                              fontSize: 18,
                              fontWeight: FontWeight.w700,
                            ),
                          ),
                          SizedBox(height: 5),
                          Text('Valor: R\$${model.orderPrice}'),
                          SizedBox(height: 5),
                          Text('Distância: ${model.orderDistance} km'),
                        ],
                      ),
                      Icon(Icons.arrow_forward_ios, color: Colors.red),
                    ],
                  ),
                ),
              ),
            );
          },
          separatorBuilder: (_, index) => const Divider(),
          itemCount: orderList.length,
        ),
      ),
    );
  }
}
