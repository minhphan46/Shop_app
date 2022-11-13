import "package:flutter/material.dart";
import '../widgets/products_gridview.dart';

enum FilterOptions {
  Favourites,
  All,
}

class ProductOverviewScreen extends StatefulWidget {
  @override
  State<ProductOverviewScreen> createState() => _ProductOverviewScreenState();
}

class _ProductOverviewScreenState extends State<ProductOverviewScreen> {
  var _showOnlyFavorites = false;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Myshop"),
        actions: [
          PopupMenuButton(
            onSelected: (FilterOptions selectedValue) {
              if (selectedValue == FilterOptions.Favourites) {
                _showOnlyFavorites = true;
              } else {
                _showOnlyFavorites = false;
              }
              setState(() {});
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
      body: ProductsGridView(_showOnlyFavorites),
    );
  }
}
