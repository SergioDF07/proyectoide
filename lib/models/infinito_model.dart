class InfinitoModel {

  final int id;
  final String name;
  final String ki;
  final String race;
  final String description;
  final String image;

  const InfinitoModel(
    {
      required this.id,
      required this.name,
      required this.ki,
      required this.race,
      required this.description,
      required this.image
    }
  );

  factory InfinitoModel.fromJson(Map<String, dynamic> json)
  => InfinitoModel(
    name: json["name"] ?? "no name",
    id: json["id"] ?? 0, 
    description: json["description"] ?? "no description", 
    ki: json["ki"] ?? "Unknown ki",
    race: json["race"] ?? "no race",
    image: json["image"] ?? "not found"
    );

}