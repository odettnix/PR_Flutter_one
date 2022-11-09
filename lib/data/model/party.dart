import 'package:flutter_application_1/domain/entity/party_entity.dart';

class Party extends PartyEntity{
  late int id;
  final int quantity;
  final String dateOfReceipt;
  final int deliveryCost;
  final int id_product;
  final int id_provider;
  final int id_customer;
  Party({
    required this.quantity,
    required this.dateOfReceipt,
    required this.deliveryCost,
    required this.id_product,
    required this.id_provider,
    required this.id_customer
    }): super(
      quantity: quantity,
      dateOfReceipt: dateOfReceipt,
      deliveryCost: deliveryCost,
      id_product: id_product,
      id_provider: id_provider,
      id_customer: id_customer);

  Map<String,dynamic> toMap(){
    return{
      'quantity': quantity,
      'dateOfReceipt': dateOfReceipt,
      'deliveryCost': deliveryCost,
      'id_product': id_product,
      'id_provider': id_provider,
      'id_customer': id_customer
    };
  }

  factory Party.toFromMap(Map<String, dynamic> json){
    return Party(
      quantity: json['quantity'],
      dateOfReceipt: json['dateOfReceipt'],
      deliveryCost: json['deliveryCost'],
      id_product: json['id_product'],
      id_provider: json['id_provider'],
      id_customer: json['id_customer']
      );
  } 
}