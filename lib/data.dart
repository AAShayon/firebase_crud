class Product {
  final String name; // You might want to replace this with title
  final double price;
  final String description;
  final String imageUrl;

  Product({
    required this.name, // You might want to replace this with title
    required this.price,
    required this.description,
    required this.imageUrl,
  });

  // Named constructor for creating instances from a Map
  Product.fromMap(Map<String, dynamic> map)
      : name = map['product_name'] ?? 'No Name', // Update to match your dataset
        price = (map['price'] as num?)?.toDouble() ?? 0.0,
        description = map['description'] ?? 'No Description',
        imageUrl = map['image'] ?? ''; // Update to match your dataset

// Add any other methods or validations as needed
}
