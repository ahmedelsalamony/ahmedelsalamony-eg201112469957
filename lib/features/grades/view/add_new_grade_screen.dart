import 'package:awesome_dialog/awesome_dialog.dart';
import 'package:eg201112469957/features/grades/view_model/grades_cubit/grades_cubit.dart';
import 'package:eg201112469957/features/grades/view_model/grades_cubit/grades_states.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:go_router/go_router.dart';
import 'package:hive_flutter/hive_flutter.dart';

import '../../../common/widget/app_text_button.dart';
import '../../../common/widget/text_input.dart';
import '../../../common/widget/vertical_spacer.dart';
import '../../../core/app_strings.dart';
import '../../../core/app_styles.dart';

class AddNewGrade extends StatefulWidget {
  const AddNewGrade({
    super.key,
  });

  @override
  State<AddNewGrade> createState() => _AddNewGradeState();
}

class _AddNewGradeState extends State<AddNewGrade> {
  TextEditingController gradeNamearController = TextEditingController();
  TextEditingController gradeNameenController = TextEditingController();

  @override
  void initState() {
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          backgroundColor: kSecondColor,
          title: const Text("Add New Grade"),
        ),
        body: SingleChildScrollView(
            child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Column(mainAxisAlignment: MainAxisAlignment.center, children: [
            const VerticalSpacer(),
            Align(
              alignment: Alignment.centerLeft,
              child: Text(
                "grade name in arabic",
                style: k18RegularTextStyle.copyWith(color: Colors.black),
              ),
            ),
            const VerticalSpacer(),
            TextInput(
              hint: "",
              controller: gradeNamearController,
              validator: (value) {
                if (value!.isEmpty) {
                  return "grade name is required";
                } else {
                  return null;
                }
              },
            ),
            const VerticalSpacer(
              height: 24,
            ),
            Align(
              alignment: Alignment.centerLeft,
              child: Text(
                "grade name in English",
                style: k18RegularTextStyle.copyWith(color: Colors.black),
              ),
            ),
            const VerticalSpacer(),
            TextInput(
              hint: "",
              controller: gradeNameenController,
              validator: (value) {
                if (value!.isEmpty) {
                  return "grade name in English is required";
                } else {
                  return null;
                }
              },
            ),
            const VerticalSpacer(),
            BlocConsumer<GradesCubit, GradesStates>(
              builder: (context, state) {
                if (state is PostGradeLoadingState) {
                  return const Center(child: CircularProgressIndicator());
                } else {
                  return Container(
                    padding: const EdgeInsets.all(8),
                    width: double.infinity,
                    child: AppTextButton(
                      title: "Add Grade",
                      onPress: () async {
                        var box = Hive.box(AppStrings.kHiveBoxName);
                        await GradesCubit.get(context).addGrade(
                          schoolId: box.get(AppStrings.kSchoolId),
                          name_ar: gradeNamearController.text,
                          name_en: gradeNameenController.text,
                        );
                      },
                    ),
                  );
                }
              },
              listener: (context, state) {
                if (state is PostGradeLoadedState) {
                  context.pop();
                } else if (state is PostGradeErrorState) {
                  AwesomeDialog(
                    context: context,
                    dialogType: DialogType.error,
                    animType: AnimType.rightSlide,
                    title: 'My School',
                    desc: state.errorMessage,
                    btnCancelOnPress: () {},
                    btnOkOnPress: () {},
                  ).show();
                }
              },
            )
          ]),
        )));
  }
}
