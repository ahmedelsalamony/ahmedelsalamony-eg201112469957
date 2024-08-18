// ignore_for_file: public_member_api_docs, sort_constructors_first, non_constant_identifier_names
import 'package:flutter_bloc/flutter_bloc.dart';

import 'package:eg201112469957/features/grades/view_model/grades_cubit/grades_states.dart';

import '../../data/repository/grades_repository.dart';

class GradesCubit extends Cubit<GradesStates> {
  final GradesRepository gradesRepository;

  GradesCubit({
    required this.gradesRepository,
  }) : super(IdealState());

  static GradesCubit get(context) => BlocProvider.of(context);

  Future<void> getGradesIndex() async {
    emit(GradesLoadingState());
    final response = await gradesRepository.getGradesIndex();
    response.fold(
      (l) => emit(GradesErrorState(l.errMessage)),
      (r) => emit(GradesLoadedState(r)),
    );
  }

  Future<void> deleteGrade({required String gradeId}) async {
    emit(DeleteGradeLoadingState());
    final response = await gradesRepository.deleteGrade(gradeId: gradeId);
    getGradesIndex();
    response.fold(
      (l) => emit(DeleteGradeErrorState(l.errMessage)),
      (r) => emit(DeleteGradeLoadedState(r)),
    );
  }

  Future<void> addGrade({
    required String schoolId,
    required String name_ar,
    required String name_en,
  }) async {
    emit(PostGradeLoadingState());
    final response = await gradesRepository.addGrade(
      schoolId: schoolId,
      name_ar: name_ar,
      name_en: name_en,
    );
    getGradesIndex();
    response.fold(
      (l) => emit(PostGradeErrorState(l.errMessage)),
      (r) => emit(PostGradeLoadedState(r)),
    );
  }

  Future<void> updateGrade({
    required String gradeId,
    required String name_ar,
    required String name_en,
  }) async {
    emit(UpdateGradeLoadingState());
    final response = await gradesRepository.updateGrade(
      gradeId: gradeId,
      name_ar: name_ar,
      name_en: name_en,
    );
    getGradesIndex();
    response.fold(
      (l) => emit(UpdateGradeErrorState(l.errMessage)),
      (r) => emit(UpdateGradeLoadedState(r)),
    );
  }
}
