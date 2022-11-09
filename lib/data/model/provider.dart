import 'package:flutter_application_1/domain/entity/provider_entity.dart';

class Provider extends ProviderEntity{
  late int id;
  final String providerName;
  final String address;
  final String phoneNumber;
  Provider({
  required this.providerName,
  required this.address,
  required this.phoneNumber
    }): super(
      providerName: providerName,
      address: address,
      phoneNumber: phoneNumber);

  Map<String,dynamic> toMap(){
    return{
      'providerName': providerName,
      'address': address,
      'phoneNumber': phoneNumber
    };
  }

  factory Provider.toFromMap(Map<String, dynamic> json){
    return Provider(
      providerName: json['providerName'],
      address: json['address'],
      phoneNumber: json['phoneNumber']
      );
  } 
}