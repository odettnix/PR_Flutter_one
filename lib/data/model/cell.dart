import 'package:flutter_application_1/domain/entity/cell_entity.dart';

class Cell extends CellEntity{
  late int id;
  final int cellNumber;
  final int id_party;
  Cell({
  required this.cellNumber,
  required this.id_party,
    }): super(
      cellNumber: cellNumber,
      id_party: id_party);

  Map<String,dynamic> toMap(){
    return{
      'cellNumber': cellNumber,
      'id_party': id_party
    };
  }

  factory Cell.toFromMap(Map<String, dynamic> json){
    return Cell(
      cellNumber: json['cellNumber'],
      id_party: json['id_party']);
  } 
}