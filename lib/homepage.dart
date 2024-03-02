// homepage.dart

import 'package:firebase_operation/common/widgets/layouts/grid_layouts.dart';
import 'package:firebase_operation/common/widgets/products/products_cards/products_card_vertical.dart';
import 'package:firebase_operation/provider/product_provider.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'productcard.dart';

class HomePage extends StatelessWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Products view'),
      ),
      body: SingleChildScrollView(
        child: Consumer<ProductProvider>(
          builder: (context, productProvider, child) {

            return AppGridLayout(
                itemCount: productProvider.products.length,
                itemBuilder: (_, index) => VerticalProductCard(
                      price: productProvider.products[index].price, name: productProvider.products[index].name, image: productProvider.products[index].imageUrl,
                    ));
            //   GridView.builder(
            //   gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
            //     crossAxisCount: 2,
            //     crossAxisSpacing: 8.0,
            //     mainAxisSpacing: 8.0,
            //   ),
            //   itemCount: productProvider.products.length,
            //   itemBuilder: (context, index) {
            //     final product = productProvider.products[index];
            //     return ,
            //   },
            // );
          },
        ),
      ),
    );
  }
}
