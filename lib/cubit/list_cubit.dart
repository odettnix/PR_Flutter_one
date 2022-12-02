import 'package:bloc/bloc.dart';
import 'package:flutter/material.dart';
import 'package:meta/meta.dart';

part 'list_state.dart';

class ListCubit extends Cubit<ListState> {
  ListCubit() : super(ListInitial());


  List<Widget> result = [];
  

  void onClickResult(Brightness brightness, String count){
    if(brightness == Brightness.light){
      result.add(Text("Светлая тема: $count"));
      emit(clickRes(result));
    }
    else{
      result.add(Text("Темная тема: $count"));
      emit(clickRes(result));
    }
  }


  void onClickClear(){
    result.clear();
    emit(clickRes(result));
  }
}
