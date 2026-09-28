class ProductModel {

  final int id;
  final String title;
  final String description;
  final double price;
  final String image;

  const ProductModel(
    {
      required this.title,
      required this.id,
      required this.description,
      required this.price,
      required this.image
    }
  );

  factory ProductModel.fromJson(Map<String, dynamic> json)
  => ProductModel(
    title: json["title"] ?? "no title",
    id: json["id"] ?? 0, 
    description: json["description"] ?? "no description", 
    price: json["price"] ?? 0.0,
    image: json["image"] ?? "no image"
    );

}