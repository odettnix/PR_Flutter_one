part of 'brightness_cubit.dart';

@immutable
abstract class BrightnessState {}

class BrightnessInitial extends BrightnessState {}

class clickBrightnessLight extends BrightnessState {
  // var result;
  Brightness brightnessLight;
  clickBrightnessLight(this.brightnessLight);
}

class clickBrightnessDark extends BrightnessState {
  // var result;
  Brightness brightnessDark;
  clickBrightnessDark(this.brightnessDark);
}
