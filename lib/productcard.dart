import 'package:flutter/material.dart';

class ProductCard extends StatelessWidget {
  final String? name;
  final double price;
  final String? description;
  final String imageUrl; // Add this line

  const ProductCard({
    Key? key,
    required this.name,
    required this.price,
    required this.description,
    required this.imageUrl, // Add this line
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 400,
      width: 350,
      color: Colors.red,
      child: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            const Expanded(child: Text('Product Information')),
            Expanded(
              child: Image.network(
                imageUrl, // Pass the image URL here
                height: 50, // Adjust the height as needed
                width: 50, // Adjust the width as needed
                fit: BoxFit.cover,
              ),
            ),
            const SizedBox(height: 10),
            Expanded(child: Text('$name')),
            const SizedBox(height: 10),
            Expanded(child: Text('$price')),
            const SizedBox(height: 10),
            Expanded(child: Text('$description')),
          ],
        ),
      ),
    );
  }
}
