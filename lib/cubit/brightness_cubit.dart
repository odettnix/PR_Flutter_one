import 'package:bloc/bloc.dart';
import 'package:flutter/material.dart';
import 'package:meta/meta.dart';

part 'brightness_state.dart';

class BrightnessCubit extends Cubit<BrightnessState> {
  BrightnessCubit() : super(BrightnessInitial());

  // Brightness brightness = Brightness.light;


  void onClickLight(Brightness brightness){
    if(brightness == Brightness.dark){
      brightness = Brightness.light;
      emit(clickBrightnessLight(brightness));
    }
    else{
      brightness = Brightness.dark;
      emit(clickBrightnessLight(brightness));
    }
    
  }
}
