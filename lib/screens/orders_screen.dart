import "package:flutter/material.dart";
import 'package:provider/provider.dart';
import 'package:shop_app/providers/order.dart' show Orders;
import 'package:shop_app/widgets/order_item.dart';

class OrdersScreen extends StatelessWidget {
  const OrdersScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final ordersData = Provider.of<Orders>(context);
    return Scaffold(
      appBar: AppBar(
        title: Text('Your Orders'),
      ),
      body: ListView.builder(
        itemCount: ordersData.orders.length,
        itemBuilder: (context, index) => OrderItem(ordersData.orders[index]),
      ),
    );
  }
}
