import 'package:flutter_application_1/domain/entity/productType_entity.dart';

class ProductType extends ProductTypeEntity{
  late int id;
  final String typeName;
  ProductType({required this.typeName}): super(typeName: typeName);

  Map<String,dynamic> toMap(){
    return{
      'typeName': typeName,
    };
  }

  factory ProductType.toFromMap(Map<String, dynamic> json){
    return ProductType(typeName: json['typeName']);
  } 
}