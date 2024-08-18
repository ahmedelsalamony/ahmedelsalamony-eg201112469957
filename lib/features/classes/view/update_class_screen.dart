import 'package:awesome_dialog/awesome_dialog.dart';
import 'package:eg201112469957/features/classes/classes_cubit/classes_cubit.dart';
import 'package:eg201112469957/features/classes/classes_cubit/classes_states.dart';
import 'package:eg201112469957/features/classes/data/models/class_response_model.dart';
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

class EditClassScreen extends StatefulWidget {
  final ClassResponseModel classResponseModel;
  const EditClassScreen({
    super.key,
    required this.classResponseModel,
  });

  @override
  State<EditClassScreen> createState() => _EditClassScreenState();
}

class _EditClassScreenState extends State<EditClassScreen> {
  TextEditingController gradeNamearController = TextEditingController();
  TextEditingController gradeNameenController = TextEditingController();

  @override
  void initState() {
    super.initState();
    gradeNamearController.text = widget.classResponseModel.name_ar;
    gradeNameenController.text = widget.classResponseModel.name_en;
    debugPrint(widget.classResponseModel.name);
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
              "class name in arabic",
              style: k18RegularTextStyle.copyWith(color: Colors.black),
            ),
          ),
          const VerticalSpacer(),
          TextInput(
            hint: "",
            controller: gradeNamearController,
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
            controller: gradeNameenController,
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
              if (state is UpdateClassLoadingState) {
                return const Center(child: CircularProgressIndicator());
              } else {
                return Container(
                  padding: const EdgeInsets.all(8),
                  width: double.infinity,
                  child: AppTextButton(
                    title: "Update Class",
                    onPress: () async {
                      final box = Hive.box(AppStrings.kHiveBoxName);
                      await ClassesCubit.get(context).updateClass(
                          gradeId: box.get(AppStrings.kGradeId),
                          name_ar: gradeNamearController.text,
                          name_en: gradeNameenController.text,
                          classId: widget.classResponseModel.id,
                          schoolId: widget.classResponseModel.school_id);
                    },
                  ),
                );
              }
            },
            listener: (context, state) {
              if (state is UpdateClassLoadedState) {
                context.pop();
              } else if (state is UpdateClassErrorState) {
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
