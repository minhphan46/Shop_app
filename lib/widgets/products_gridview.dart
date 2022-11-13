import "package:flutter/material.dart";
import 'package:provider/provider.dart';
import '../providers/product.dart';
import '../providers/products.dart';
import 'product_item.dart';

class ProductsGridView extends StatelessWidget {
  final bool showFavorite;
  ProductsGridView(this.showFavorite);

  @override
  Widget build(BuildContext context) {
    final productData = Provider.of<Products>(context);
    final products =
        showFavorite ? productData.favoriteItems : productData.items;
    return GridView.builder(
      padding: const EdgeInsets.all(10.0),
      itemCount: products.length,
      gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
        crossAxisCount: 2, // 2 cot
        childAspectRatio: 3 / 2, // ti le chieu dai, rong
        crossAxisSpacing: 10,
        mainAxisSpacing: 10,
      ),
      itemBuilder: (context, index) => ChangeNotifierProvider.value(
        value: products[index],
        child: ProductItem(),
      ),
    );
  }
}
