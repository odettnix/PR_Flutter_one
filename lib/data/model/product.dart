import 'package:flutter_application_1/domain/entity/product_entity.dart';

class Product extends ProductEntity{
  late int id;
  final String productName;
  final int weight;
  final int cost;
  final String description;
  final int id_user;
  final int id_ptoductType;


   Product({
  required this.productName,
  required this.weight,
  required this.cost,
  required this.description,
  required this.id_user,
  required this.id_ptoductType,
  }):super(
    productName: productName,
    weight: weight,
    cost: cost,
    description: description,
    id_user: id_user,
    id_ptoductType: id_ptoductType
  );

  Map<String, dynamic> toMap(){
    return{
      'productName': productName,
      'weight': weight,
      'cost': cost,
      'description': description,
      'id_user': id_user,
      'id_ptoductType': id_ptoductType
    };
  }

  factory Product.toFromMap(Map<String, dynamic> json){
      return Product(
        productName: json['productName'],
        weight: json['weight'],
        cost: json['cost'],
        description: json['description'],
        id_user: json['id_user'],
        id_ptoductType: json['id_ptoductType']);
    }
}