import 'package:eg201112469957/core/app_router/routes.dart';
import 'package:eg201112469957/core/app_strings.dart';
import 'package:eg201112469957/features/auth/view/login_screen.dart';
import 'package:eg201112469957/features/classes/data/models/class_response_model.dart';
import 'package:eg201112469957/features/classes/view/add_new_class_screen.dart';
import 'package:eg201112469957/features/classes/view/update_class_screen.dart';
import 'package:eg201112469957/features/grades/view/add_new_grade_screen.dart';
import 'package:eg201112469957/features/grades/view/edit_grade_screen.dart';
import 'package:eg201112469957/features/grades/view/grades_screen.dart';
import 'package:eg201112469957/features/home/view/home_screen.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:hive/hive.dart';

import '../../features/classes/view/classes_screen.dart';
import '../../features/grades/data/models/grade_response_model.dart';

final _rootNavigatorKey = GlobalKey<NavigatorState>();

var box = Hive.box(AppStrings.kHiveBoxName);

final appRouter = GoRouter(
    initialLocation: box.get(AppStrings.kIsLoggedIn, defaultValue: false)
        ? Routes.kHome
        : Routes.kLogin,
    navigatorKey: _rootNavigatorKey,
    routes: [
      GoRoute(
        path: Routes.kLogin,
        builder: (context, state) => const LoginScreen(),
      ),
      GoRoute(
          path: Routes.kHome,
          builder: (context, state) => const HomeScreen(),
          routes: [
            GoRoute(
                name: Routes.kGrades,
                path: Routes.kGrades,
                builder: (context, state) => const GradesScreen(),
                routes: [
                  GoRoute(
                      name: Routes.kEditGrade,
                      path: Routes.kEditGrade,
                      builder: (context, state) {
                        return EditGradeScreen(
                          gradeModel: state.extra as GradeModel,
                        );
                      }),
                  GoRoute(
                      name: Routes.kAddNewGrade,
                      path: Routes.kAddNewGrade,
                      builder: (context, state) {
                        return const AddNewGrade();
                      }),
                  GoRoute(
                      name: Routes.kClasses,
                      path: Routes.kClasses,
                      builder: (context, state) {
                        return ClassesScreen(
                          gradeModel: state.extra as GradeModel,
                        );
                      },
                      routes: [
                        GoRoute(
                            name: Routes.kAddNewClass,
                            path: Routes.kAddNewClass,
                            builder: (context, state) {
                              return AddNewClass(
                                  gradeModel: state.extra as GradeModel);
                            }),
                        GoRoute(
                            name: Routes.kEditClass,
                            path: Routes.kEditClass,
                            builder: (context, state) {
                              debugPrint("state extra ${state.extra}");
                              return EditClassScreen(
                                classResponseModel:
                                    state.extra as ClassResponseModel,
                              );
                            }),
                      ]),
                ]),
          ]),
    ]);
