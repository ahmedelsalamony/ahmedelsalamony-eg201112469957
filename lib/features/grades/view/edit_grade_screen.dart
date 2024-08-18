import 'package:awesome_dialog/awesome_dialog.dart';
import 'package:eg201112469957/features/grades/data/models/grade_response_model.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:go_router/go_router.dart';
import 'package:hive/hive.dart';

import '../../../common/widget/app_text_button.dart';
import '../../../common/widget/text_input.dart';
import '../../../common/widget/vertical_spacer.dart';
import '../../../core/app_strings.dart';
import '../../../core/app_styles.dart';
import '../view_model/grades_cubit/grades_cubit.dart';
import '../view_model/grades_cubit/grades_states.dart';

class EditGradeScreen extends StatefulWidget {
  final GradeModel gradeModel;
  const EditGradeScreen({
    super.key,
    required this.gradeModel,
  });

  @override
  State<EditGradeScreen> createState() => _EditGradeScreenState();
}

class _EditGradeScreenState extends State<EditGradeScreen> {
  TextEditingController gradeNamearController = TextEditingController();
  TextEditingController gradeNameenController = TextEditingController();

  @override
  void initState() {
    super.initState();
    gradeNamearController.text = widget.gradeModel.name_ar;
    gradeNameenController.text = widget.gradeModel.name_en;
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: kSecondColor,
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
              if (state is UpdateGradeLoadingState) {
                return const Center(child: CircularProgressIndicator());
              } else {
                return Container(
                  padding: const EdgeInsets.all(8),
                  width: double.infinity,
                  child: AppTextButton(
                    title: "Update Grade",
                    onPress: () async {
                      await GradesCubit.get(context).updateGrade(
                        gradeId: widget.gradeModel.id,
                        name_ar: gradeNamearController.text,
                        name_en: gradeNameenController.text,
                      );
                    },
                  ),
                );
              }
            },
            listener: (context, state) {
              if (state is UpdateGradeLoadedState) {
                context.pop();
              } else if (state is UpdateGradeErrorState) {
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
      )),
    );
  }
}
