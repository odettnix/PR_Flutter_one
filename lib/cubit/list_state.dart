part of 'list_cubit.dart';

@immutable
abstract class ListState {}

class ListInitial extends ListState {}

class clickRes extends ListState{
  // var result;
  var result;
  clickRes(this.result);
}

class clickClear extends ListState{
  // var result;
  var result;
  clickClear(this.result);
}
