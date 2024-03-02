import 'package:flutter/material.dart';

class ProductCard extends StatelessWidget {
  final String? name;
  final double price;
  final String discription;
  const ProductCard({
    super.key, required this.name, required this.price, required this.discription,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.red,
      child:  Padding(
        padding: const EdgeInsets.all(8.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            const Text('PProduct Infrmation'),
            // SizedBox(height: 20,),
            const Icon(Icons.ac_unit, size: 100,),
            const SizedBox(height: 10,),
            Text('$name'),
            const SizedBox(height: 10,),
            Text('$price'),
            const SizedBox(height: 10,),
            Text(discription)
          ],
        ),
      ),
    );
  }
}