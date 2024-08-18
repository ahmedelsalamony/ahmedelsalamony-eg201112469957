import 'package:eg201112469957/core/app_router/app_router.dart';
import 'package:eg201112469957/core/app_themes.dart';
import 'package:eg201112469957/features/classes/classes_cubit/classes_cubit.dart';
import 'package:eg201112469957/features/classes/data/repository/classes_repository.dart';
import 'package:eg201112469957/features/grades/data/repository/grades_repository.dart';
import 'package:eg201112469957/features/grades/view_model/grades_cubit/grades_cubit.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:get_it/get_it.dart';
import 'package:responsive_framework/responsive_framework.dart';

import 'features/auth/auth_cubit/auth_cubit.dart';
import 'features/auth/data/repository/Auth_repository.dart';

class TaskApp extends StatelessWidget {
  const TaskApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MultiBlocProvider(
      providers: [
        BlocProvider(
          create: (context) =>
              AuthCubit(authRepository: GetIt.instance<AuthRepository>()),
        ),
        BlocProvider(
          create: (context) =>
              GradesCubit(gradesRepository: GetIt.instance<GradesRepository>()),
        ),
        BlocProvider(
          create: (context) => ClassesCubit(
              classesRepository: GetIt.instance<ClassesRepository>()),
        )
      ],
      child: MaterialApp.router(
        key: ValueKey<String>(DateTime.now().millisecondsSinceEpoch.toString()),
        routerConfig: appRouter,
        debugShowCheckedModeBanner: false,
        theme: AppTheme.lightAppTheme,
        builder: (context, child) => ResponsiveBreakpoints.builder(
          child: child!,
          breakpoints: [
            const Breakpoint(start: 0, end: 450, name: MOBILE),
            const Breakpoint(start: 451, end: 800, name: TABLET),
            const Breakpoint(start: 801, end: 1920, name: DESKTOP),
            const Breakpoint(start: 1921, end: double.infinity, name: '4K'),
          ],
        ),
      ),
    );
  }
}
