import 'package:awesome_dialog/awesome_dialog.dart';
import 'package:eg201112469957/features/classes/classes_cubit/classes_cubit.dart';
import 'package:eg201112469957/features/classes/classes_cubit/classes_states.dart';
import 'package:eg201112469957/features/grades/data/models/grade_response_model.dart';
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

class AddNewClass extends StatefulWidget {
  final GradeModel gradeModel;
  const AddNewClass({
    required this.gradeModel,
    super.key,
  });

  @override
  State<AddNewClass> createState() => _AddNewClassState();
}

class _AddNewClassState extends State<AddNewClass> {
  TextEditingController classNamearController = TextEditingController();
  TextEditingController classNameenController = TextEditingController();

  @override
  void initState() {
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          backgroundColor: kSecondColor,
          title: const Text("Add New Class"),
        ),
        body: SingleChildScrollView(
            child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Column(mainAxisAlignment: MainAxisAlignment.center, children: [
            const VerticalSpacer(),
            Align(
              alignment: Alignment.centerLeft,
              child: Text(
                "class name in arabic",
                style: k18RegularTextStyle.copyWith(color: Colors.black),
              ),
            ),
            const VerticalSpacer(),
            TextInput(
              hint: "",
              controller: classNamearController,
              validator: (value) {
                if (value!.isEmpty) {
                  return "class name is required";
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
                "class name in English",
                style: k18RegularTextStyle.copyWith(color: Colors.black),
              ),
            ),
            const VerticalSpacer(),
            TextInput(
              hint: "",
              controller: classNameenController,
              validator: (value) {
                if (value!.isEmpty) {
                  return "class name in English is required";
                } else {
                  return null;
                }
              },
            ),
            const VerticalSpacer(),
            BlocConsumer<ClassesCubit, ClassesStates>(
              builder: (context, state) {
                if (state is PostGradeLoadingState) {
                  return const Center(child: CircularProgressIndicator());
                } else {
                  return Container(
                    padding: const EdgeInsets.all(8),
                    width: double.infinity,
                    child: AppTextButton(
                      title: "Add Class",
                      onPress: () async {
                        var box = Hive.box(AppStrings.kHiveBoxName);
                        await ClassesCubit.get(context).addClass(
                          gradeId: widget.gradeModel.id,
                          schoolId: box.get(AppStrings.kSchoolId),
                          name_ar: classNamearController.text,
                          name_en: classNameenController.text,
                        );
                      },
                    ),
                  );
                }
              },
              listener: (context, state) {
                if (state is PostClassLoadedState) {
                  context.pop();
                } else if (state is PostClassErrorState) {
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
