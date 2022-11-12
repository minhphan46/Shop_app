import "package:flutter/material.dart";
import 'package:provider/provider.dart';
import 'package:shop_app/providers/products.dart';
import '../widgets/products_gridview.dart';

enum FilterOptions {
  Favourites,
  All,
}

class ProductOverviewScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final productContainer = Provider.of<Products>(context, listen: false);
    return Scaffold(
      appBar: AppBar(
        title: Text("Myshop"),
        actions: [
          PopupMenuButton(
            onSelected: (selectedValue) {
              if (selectedValue == FilterOptions.Favourites) {
                productContainer.showFavoritesOnly();
              } else {
                productContainer.showAll();
              }
            },
            icon: Icon(
              Icons.more_vert,
            ),
            itemBuilder: (context) => [
              PopupMenuItem(
                child: Text("Only Favourite"),
                value: FilterOptions.Favourites,
              ),
              PopupMenuItem(
                child: Text("Show All"),
                value: FilterOptions.All,
              ),
            ],
          )
        ],
      ),
      body: ProductsGridView(),
    );
  }
}
