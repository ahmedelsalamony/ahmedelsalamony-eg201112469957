import 'package:eg201112469957/common/widget/text_input.dart';
import 'package:eg201112469957/common/widget/vertical_spacer.dart';
import 'package:eg201112469957/core/app_router/routes.dart';
import 'package:eg201112469957/core/app_strings.dart';
import 'package:eg201112469957/core/app_styles.dart';
import 'package:eg201112469957/features/classes/classes_cubit/classes_cubit.dart';
import 'package:eg201112469957/features/classes/classes_cubit/classes_states.dart';
import 'package:eg201112469957/features/grades/data/models/grade_response_model.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:go_router/go_router.dart';
import 'package:hive/hive.dart';

class ClassesScreen extends StatefulWidget {
  final GradeModel gradeModel;
  const ClassesScreen({super.key, required this.gradeModel});

  @override
  State<ClassesScreen> createState() => _ClassesScreenState();
}

class _ClassesScreenState extends State<ClassesScreen> {
  TextEditingController searchController = TextEditingController();

  @override
  void initState() {
    super.initState();
    WidgetsBinding.instance.addPostFrameCallback((timeStamp) async {
      await ClassesCubit.get(context).getClassesIndex();
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: kSecondColor,
        title: Text(
          widget.gradeModel.name_en,
          style: k18RegularTextStyle.copyWith(color: Colors.black),
        ),
        actions: [
          InkWell(
            onTap: () {
              context.goNamed(
                Routes.kAddNewClass,
                extra: widget.gradeModel,
              );
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
                    "Add Classes",
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
            BlocConsumer<ClassesCubit, ClassesStates>(
              builder: (context, state) {
                if (state is ClassesLoadingState) {
                  return const Center(child: CircularProgressIndicator());
                } else if (state is ClassesErrorState) {
                  return Center(child: Text(state.errorMessage));
                } else if (state is ClassesLoadedState) {
                  return Expanded(
                      child: ListView.builder(
                          itemCount: state.classes.length,
                          itemBuilder: (context, index) {
                            return Card(
                              shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(12.0),
                              ),
                              child: ListTile(
                                title: Text(state.classes[index].name),
                                trailing: SizedBox(
                                    width: 200,
                                    child: Row(
                                      mainAxisAlignment: MainAxisAlignment.end,
                                      children: [
                                        IconButton(
                                          onPressed: () {
                                            final box = Hive.box(
                                                AppStrings.kHiveBoxName);
                                            box.put(AppStrings.kClassId,
                                                state.classes[index].id);
                                            box.put(
                                              AppStrings.kGradeId,
                                              widget.gradeModel.id,
                                            );
                                            context.pushNamed(
                                              Routes.kEditClass,
                                              extra: state.classes[index],
                                            );
                                          },
                                          icon: const Icon(
                                            Icons.edit,
                                            color: Colors.black,
                                          ),
                                        ),
                                        IconButton(
                                          onPressed: () async {
                                            await ClassesCubit.get(context)
                                                .deleteClass(
                                                    classId: state
                                                        .classes[index].id);
                                          },
                                          icon: const Icon(
                                            Icons.delete,
                                            color: Colors.black,
                                          ),
                                        ),
                                        IconButton(
                                          onPressed: () {},
                                          icon: const Icon(
                                            Icons.arrow_forward_ios,
                                            color: Colors.black,
                                          ),
                                        )
                                      ],
                                    )),
                                // trailing: Row(

                                // ),
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
