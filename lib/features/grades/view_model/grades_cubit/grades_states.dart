import 'package:eg201112469957/features/grades/data/models/grade_response_model.dart';
import 'package:equatable/equatable.dart';

abstract class GradesStates extends Equatable {}

class IdealState extends GradesStates {
  @override
  List<Object?> get props => [];
}

//-------------------grades index states -------------------
class GradesLoadingState extends GradesStates {
  @override
  List<Object?> get props => [];
}

class GradesErrorState extends GradesStates {
  final String errorMessage;

  GradesErrorState(this.errorMessage);
  @override
  List<Object?> get props => [errorMessage];
}

class GradesLoadedState extends GradesStates {
  final List<GradeModel> grades;
  GradesLoadedState(this.grades);
  @override
  List<Object?> get props => [grades];
}

//-------------------post grade states -------------------
class PostGradeIdealState extends GradesStates {
  @override
  List<Object?> get props => [];
}

class PostGradeLoadingState extends GradesStates {
  @override
  List<Object?> get props => [];
}

class PostGradeErrorState extends GradesStates {
  final String errorMessage;
  PostGradeErrorState(this.errorMessage);
  @override
  List<Object?> get props => [errorMessage];
}

class PostGradeLoadedState extends GradesStates {
  final GradeModel grade;

  PostGradeLoadedState(this.grade);

  @override
  List<Object?> get props => [];
}

//-------------------delete grade states -------------------
class DeleteGradeLoadingState extends GradesStates {
  @override
  List<Object?> get props => [];
}

class DeleteGradeErrorState extends GradesStates {
  final String errorMessage;
  DeleteGradeErrorState(this.errorMessage);
  @override
  List<Object?> get props => [errorMessage];
}

class DeleteGradeLoadedState extends GradesStates {
  final bool deleteStatus;
  DeleteGradeLoadedState(this.deleteStatus);
  @override
  List<Object?> get props => [];
}

//-------------------update grade states -------------------
class UpdateGradeLoadingState extends GradesStates {
  @override
  List<Object?> get props => [];
}

class UpdateGradeErrorState extends GradesStates {
  final String errorMessage;
  UpdateGradeErrorState(this.errorMessage);
  @override
  List<Object?> get props => [errorMessage];
}

class UpdateGradeLoadedState extends GradesStates {
  final GradeModel gradeModel;
  UpdateGradeLoadedState(this.gradeModel);
  @override
  List<Object?> get props => [gradeModel];
}
