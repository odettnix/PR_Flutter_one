part of 'click_cubit.dart';

@immutable
abstract class ClickState {}

class ClickInitial extends ClickState {}


class clickInitial extends ClickState{

}

class cliskError extends ClickState{
  final String message;

  cliskError(this.message);

  
}

class Click extends ClickState{
  final int count;
  Click(this.count);
}


