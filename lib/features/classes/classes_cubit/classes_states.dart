import 'package:eg201112469957/features/classes/data/models/class_response_model.dart';
import 'package:equatable/equatable.dart';

abstract class ClassesStates extends Equatable {}

class IdealState extends ClassesStates {
  @override
  List<Object?> get props => [];
}

//-------------------Classes index states -------------------
class ClassesLoadingState extends ClassesStates {
  @override
  List<Object?> get props => [];
}

class ClassesErrorState extends ClassesStates {
  final String errorMessage;

  ClassesErrorState(this.errorMessage);
  @override
  List<Object?> get props => [errorMessage];
}

class ClassesLoadedState extends ClassesStates {
  final List<ClassResponseModel> classes;
  ClassesLoadedState(this.classes);
  @override
  List<Object?> get props => [classes];
}

//-------------------post class states -------------------
class PostClassIdealState extends ClassesStates {
  @override
  List<Object?> get props => [];
}

class PostClassLoadingState extends ClassesStates {
  @override
  List<Object?> get props => [];
}

class PostClassErrorState extends ClassesStates {
  final String errorMessage;
  PostClassErrorState(this.errorMessage);
  @override
  List<Object?> get props => [errorMessage];
}

class PostClassLoadedState extends ClassesStates {
  final ClassResponseModel classModel;

  PostClassLoadedState(this.classModel);

  @override
  List<Object?> get props => [];
}

//-------------------delete class states -------------------
class DeleteClassLoadingState extends ClassesStates {
  @override
  List<Object?> get props => [];
}

class DeleteClassErrorState extends ClassesStates {
  final String errorMessage;
  DeleteClassErrorState(this.errorMessage);
  @override
  List<Object?> get props => [errorMessage];
}

class DeleteClassLoadedState extends ClassesStates {
  final bool deleteStatus;
  DeleteClassLoadedState(this.deleteStatus);
  @override
  List<Object?> get props => [];
}

//-------------------update class states -------------------
class UpdateClassLoadingState extends ClassesStates {
  @override
  List<Object?> get props => [];
}

class UpdateClassErrorState extends ClassesStates {
  final String errorMessage;
  UpdateClassErrorState(this.errorMessage);
  @override
  List<Object?> get props => [errorMessage];
}

class UpdateClassLoadedState extends ClassesStates {
  final ClassResponseModel classModel;
  UpdateClassLoadedState(this.classModel);
  @override
  List<Object?> get props => [classModel];
}
