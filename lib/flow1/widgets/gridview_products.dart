import 'package:flutter/material.dart';
import 'package:ordotest/dummy_data.dart';
import 'package:ordotest/flow1/widgets/product_tile.dart';
import 'package:ordotest/models/product.dart';

class GridViewProducts extends StatefulWidget {
  const GridViewProducts({Key? key}) : super(key: key);

  @override
  State<GridViewProducts> createState() => _GridViewProductsState();
}

class _GridViewProductsState extends State<GridViewProducts> {
  final List<Product> myProducts = [];

  @override
  void initState() {
    for (var json in Constants.DUMMUY) {
      myProducts.add(Product.fromMap(json));
    }
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return GridView.count(addRepaintBoundaries: true,shrinkWrap: true,physics: const NeverScrollableScrollPhysics(),
       childAspectRatio:382.11 / 600,
       padding: const EdgeInsets.all(20),
        crossAxisSpacing: 40,
 mainAxisSpacing: 20,
        crossAxisCount: 2,semanticChildCount: 8,
        children: myProducts
            .map((prod) => ProductTile(prod.name, prod.price, prod.actualPrice,
                prod.imageUrl, prod.color))
            .toList());
  }
}
