import 'package:flutter_application_1/domain/entity/user_entity.dart';

class User extends UserEntity{
  late int id;
  final String name;
  final String surname;
  final String patronymic;
  final String email;
  final int id_post;

   User({
  required this.name,
  required this.surname,
  required this.patronymic,
  required this.email,
  required this.id_post
  }):super(
    name: name,
    surname: surname,
    patronymic: patronymic,
    email: email,
    id_post: id_post
  );

  Map<String, dynamic> toMap(){
    return{
      'name': name,
      'surname': surname,
      'patronymic': patronymic,
      'email': email,
      'id_post': id_post
    };
  }

  factory User.toFromMap(Map<String, dynamic> json){
      return User(
        name: json['name'],
        surname: json['surname'],
        patronymic: json['patronymic'],
        email: json['email'],
        id_post: json['id_post']);
    }
}