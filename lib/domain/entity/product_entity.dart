class ProductEntity{
  late int id;
  final String productName;
  final int weight;
  final int cost;
  final String description;
  final int id_user;
  final int id_ptoductType;

 ProductEntity({
  required this.productName,
  required this.weight,
  required this.cost,
  required this.description,
  required this.id_user,
  required this.id_ptoductType,
  });
}