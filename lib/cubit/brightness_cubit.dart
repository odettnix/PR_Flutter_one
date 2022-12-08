

import 'package:bloc/bloc.dart';
import 'package:flutter/material.dart';
import 'package:meta/meta.dart';
import 'package:shared_preferences/shared_preferences.dart';

part 'brightness_state.dart';

class BrightnessCubit extends Cubit<Brightness> {
  BrightnessCubit() : super(Brightness.light);
 

  SharedPreferences? sharedPreferences;
  Future<void> init() async {
    sharedPreferences = await SharedPreferences.getInstance();

    
    var thema = sharedPreferences!.getBool('thema') ?? true;

    if (thema) {
      emit((Brightness.light));
    } else {
      emit(Brightness.dark);
    }
  }

  void onClickLight(Brightness brightness) {
    if (brightness == Brightness.dark) {
      brightness = Brightness.light;
      sharedPreferences!.setBool('thema', true);
      emit(brightness);
    } else {
      brightness = Brightness.dark;
      sharedPreferences!.setBool('thema', false);
      emit(brightness);
    }
  }
}
