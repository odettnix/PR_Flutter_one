import 'package:flutter_application_1/domain/entity/post_entity.dart';

class Post extends PostEntity{
  late int id;
  final String postName;
  Post({required this.postName}): super(postName: postName);

  Map<String,dynamic> toMap(){
    return{
      'postName': postName,
    };
  }

  factory Post.toFromMap(Map<String, dynamic> json){
    return Post(postName: json['postName']);
  } 
}