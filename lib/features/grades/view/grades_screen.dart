import 'package:eg201112469957/common/widget/text_input.dart';
import 'package:eg201112469957/common/widget/vertical_spacer.dart';
import 'package:eg201112469957/core/app_router/routes.dart';
import 'package:eg201112469957/core/app_styles.dart';
import 'package:eg201112469957/features/grades/data/models/grade_response_model.dart';
import 'package:eg201112469957/features/grades/view_model/grades_cubit/grades_cubit.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:go_router/go_router.dart';

import '../view_model/grades_cubit/grades_states.dart';

class GradesScreen extends StatefulWidget {
  const GradesScreen({super.key});

  @override
  State<GradesScreen> createState() => _GradesScreenState();
}

class _GradesScreenState extends State<GradesScreen> {
  TextEditingController searchController = TextEditingController();

  @override
  void initState() {
    super.initState();
    WidgetsBinding.instance.addPostFrameCallback((timeStamp) async {
      await GradesCubit.get(context).getGradesIndex();
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: kSecondColor,
        title: Text(
          "Grades",
          style: k18RegularTextStyle.copyWith(color: Colors.black),
        ),
        actions: [
          InkWell(
            onTap: () {
              GoRouter.of(context).pushNamed(Routes.kAddNewGrade);
            },
            child: Container(
              margin: const EdgeInsets.all(8),
              padding: const EdgeInsets.all(8),
              decoration: const BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.all(Radius.circular(20))),
              child: Row(
                children: [
                  const Icon(
                    Icons.add,
                    color: Colors.purple,
                  ),
                  Text(
                    "Add Grades",
                    style: k16MediumTextStyle.copyWith(
                      color: Colors.purple,
                    ),
                  )
                ],
              ),
            ),
          )
        ],
      ),
      body: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Column(
          children: [
            const VerticalSpacer(),
            TextInput(
              hint: "Search Grades",
              controller: searchController,
              prefixIcon: const Icon(
                Icons.search,
                size: 19,
              ),
            ),
            const VerticalSpacer(height: 16),
            BlocConsumer<GradesCubit, GradesStates>(
              builder: (context, state) {
                if (state is GradesLoadingState) {
                  return const Center(child: CircularProgressIndicator());
                } else if (state is GradesErrorState) {
                  return Center(child: Text(state.errorMessage));
                } else if (state is GradesLoadedState) {
                  return Expanded(
                      child: ListView.builder(
                          shrinkWrap: true,
                          itemCount: state.grades.length,
                          itemBuilder: (context, index) {
                            return Card(
                              shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(12.0),
                              ),
                              child: Container(
                                padding: const EdgeInsets.all(8),
                                width: double.infinity,
                                child: Row(
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceBetween,
                                  children: [
                                    Text(state.grades[index].name),
                                    Row(
                                      mainAxisAlignment: MainAxisAlignment.end,
                                      children: [
                                        IconButton(
                                          onPressed: () {
                                            context.goNamed(
                                              Routes.kEditGrade,
                                              extra: state.grades[index],
                                            );
                                          },
                                          icon: const Icon(
                                            Icons.edit,
                                            color: Colors.black,
                                          ),
                                        ),
                                        IconButton(
                                          onPressed: () async {
                                            await GradesCubit.get(context)
                                                .deleteGrade(
                                                    gradeId:
                                                        state.grades[index].id);
                                          },
                                          icon: const Icon(
                                            Icons.delete,
                                            color: Colors.black,
                                          ),
                                        ),
                                        IconButton(
                                          onPressed: () {
                                            context.goNamed(
                                              Routes.kClasses,
                                              extra: state.grades[index],
                                            );
                                          },
                                          icon: const Icon(
                                            Icons.arrow_forward_ios,
                                            color: Colors.black,
                                          ),
                                        )
                                      ],
                                    )
                                  ],
                                ),
                              ),
                            );
                          }));
                } else {
                  return Container();
                }
              },
              listener: (context, state) => {},
            ),
          ],
        ),
      ),
    );
  }
}
