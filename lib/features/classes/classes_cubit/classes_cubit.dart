// ignore_for_file: public_member_api_docs, sort_constructors_first, non_constant_identifier_names
import 'package:eg201112469957/features/classes/classes_cubit/classes_states.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../data/repository/classes_repository.dart';

class ClassesCubit extends Cubit<ClassesStates> {
  final ClassesRepository classesRepository;

  ClassesCubit({
    required this.classesRepository,
  }) : super(IdealState());

  static ClassesCubit get(context) => BlocProvider.of(context);

  Future<void> getClassesIndex() async {
    emit(ClassesLoadingState());
    final response = await classesRepository.getClasses();
    response.fold(
      (l) => emit(ClassesErrorState(l.errMessage)),
      (r) => emit(ClassesLoadedState(r)),
    );
  }

  Future<void> deleteClass({required String classId}) async {
    emit(DeleteClassLoadingState());
    final response = await classesRepository.deleteClass(classId: classId);
    getClassesIndex();
    response.fold(
      (l) => emit(DeleteClassErrorState(l.errMessage)),
      (r) => emit(DeleteClassLoadedState(r)),
    );
  }

  Future<void> addClass({
    required String schoolId,
    required String name_ar,
    required String name_en,
    required String gradeId,
  }) async {
    emit(PostClassLoadingState());
    final response = await classesRepository.addClass(
      gradeId: gradeId,
      schoolId: schoolId,
      name_ar: name_ar,
      name_en: name_en,
    );
    getClassesIndex();
    response.fold(
      (l) => emit(PostClassErrorState(l.errMessage)),
      (r) => emit(PostClassLoadedState(r)),
    );
  }

  Future<void> updateClass({
    required String classId,
    required String schoolId,
    required String gradeId,
    required String name_ar,
    required String name_en,
  }) async {
    emit(UpdateClassLoadingState());
    final response = await classesRepository.updateClass(
      schoolId: schoolId,
      classId: classId,
      gradeId: gradeId,
      name_ar: name_ar,
      name_en: name_en,
    );
    getClassesIndex();
    response.fold(
      (l) => emit(UpdateClassErrorState(l.errMessage)),
      (r) => emit(UpdateClassLoadedState(r)),
    );
  }
}
