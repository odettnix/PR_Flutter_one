import 'package:flutter_application_1/domain/entity/customer_entity.dart';

class Customer extends CustomerEntity{
  late int id;
  final String customerName;
  final String address;
  final String phoneNumber;
  Customer({
  required this.customerName,
  required this.address,
  required this.phoneNumber
    }): super(
      customerName: customerName,
      address: address,
      phoneNumber: phoneNumber);

  Map<String,dynamic> toMap(){
    return{
      'customerName': customerName,
      'address': address,
      'phoneNumber': phoneNumber
    };
  }

  factory Customer.toFromMap(Map<String, dynamic> json){
    return Customer(
      customerName: json['customerName'],
      address: json['address'],
      phoneNumber: json['phoneNumber']
      );
  } 
}