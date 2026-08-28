class Product {
  final String id;
  final String name;
  final String price;
  final String image;
  final String? description;
  final double rating;
  final int reviews;
  bool isFavorite;

  Product({
    required this.id,
    required this.name,
    required this.price,
    required this.image,
    this.description,
    this.rating = 4.8,
    this.reviews = 120,
    this.isFavorite = false,
  });
}
final List<Product> products = [
  Product(
    id: '1',
    name: "Nike Air Max 270",
    price: "\$120.00",
    image: "assets/images/Nike_shoes.png",
    description:
    "The Nike Air Max 270 delivers all-day comfort with a large Max Air unit and a sleek, modern design.",
  ),
  Product(
    id: '2',
    name: "Adidas Ultraboost",
    price: "\$150.00",
    image: "assets/images/Adidas_shoes.png",
    description:
    "Experience the energy-returning power of Boost cushioning in these high-performance running shoes.",
  ),
  Product(
    id: '3',
    name: "Puma RS-X",
    price: "\$110.00",
    image: "assets/images/Puma_shoes.png",
  ),
  Product(
    id: '4',
    name: "Jordan 1 Mid",
    price: "\$130.00",
    image: "assets/images/Jordan_shoes.png",
  ),
];
