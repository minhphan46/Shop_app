import "package:flutter/material.dart";
import '../widgets/products_gridview.dart';

class ProductOverviewScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Myshop"),
        actions: [
          //PopupMenuButton(itemBuilder: itemBuilder)
        ],
      ),
      body: ProductsGridView(),
    );
  }
}
