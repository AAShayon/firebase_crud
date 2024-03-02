
import 'package:firebase_operation/common/widgets/appbar/appbar.dart';
import 'package:firebase_operation/common/widgets/products/products_cart/add_remove_button.dart';
import 'package:firebase_operation/common/widgets/products/products_cart/cart_item.dart';
import 'package:firebase_operation/common/widgets/texts/products_price_text.dart';
import 'package:firebase_operation/utils/constant/sizes.dart';
import 'package:flutter/material.dart';

class CartScreen extends StatelessWidget {
  const CartScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppCustomAppBar(
          showBackArrow: true,
          title: Text(
            'Cart',
            style: Theme.of(context).textTheme.headlineMedium,
          )),
      body: Padding(
        padding: const EdgeInsets.all(AppSizes.defaultSpace),
        child: ListView.separated(
          scrollDirection: Axis.vertical,
            shrinkWrap: true,
            itemBuilder: (_, index) => const Column(
                  children: [
                    AppCartItem(),
                    SizedBox(
                      height: AppSizes.spaceBtwItems,
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Row(
                          children: [
                            SizedBox(width:70),
                            AppProductQuantityAddRemoveButton(),
                          ],
                        ),

                        AppProductPrice(price: 256),
                      ],
                    )
                  ],
                ),
            separatorBuilder: (_, __) => const SizedBox(
                  height: AppSizes.spaceBtwSections,
                ),
            itemCount: 6),
      ),
      bottomNavigationBar: Padding(
        padding: const EdgeInsets.all(AppSizes.defaultSpace),
        child: ElevatedButton(onPressed: (){},child: const Text('Checkout \$256')),
      ) ,
    );
  }
}


