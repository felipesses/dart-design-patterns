class OrderModel {
  String id;
  String orderName;
  String clientName;
  double orderPrice;
  double orderDistance;

  OrderModel({
    this.id = '',
    this.orderName = '',
    this.clientName = '',
    this.orderPrice = 0.0,
    this.orderDistance = 0.0,
  });
}
