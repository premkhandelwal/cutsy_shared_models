class Service {
  final String id;
  final String name;
  final String image;
  final num price;

  Service({
    required this.id,
    required this.name,
    required this.image,
    required this.price,
  });

  // Factory method to create a Service object from a JSON map, handling null values
  factory Service.fromJson(Map<String, dynamic> json) {
    return Service(
      id: json['id'] ?? '', // Default to an empty string if null
      name: json['name'] as String? ?? '', // Default to an empty string if null
      image: json['image'] as String? ?? '', // Default to an empty string if null
      price: json['price'] as num? ?? 0, // Default to 0 if null
    );
  }

  // Method to convert a Service object to a JSON map
  Map<String, dynamic> toJson() {
    return {
      'id': id,
      'name': name,
      'image': image,
      'price': price.toDouble(),
    };
  }

  // Override the toString method for better readability when printing instances of Service
  @override
  String toString() {
    return 'Service{id: $id, name: $name, image: $image, price: $price}';
  }
}
