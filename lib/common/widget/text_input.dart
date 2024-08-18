import 'package:flutter/material.dart';
import '../../core/app_styles.dart';
import 'package:intl/intl.dart';

class TextInput extends StatefulWidget {
  const TextInput({
    super.key,
    this.initialValue,
    this.onChanged,
    this.validator,
    this.maxLine,
    this.controller,
    this.icon,
    this.focusNode,
    this.autoValidateMode = AutovalidateMode.onUserInteraction,
    required this.hint,
    this.prefixIcon,
    this.showDatePicker = false,
    this.inputType = TextInputType.name,
    this.obscureText = false,
  });

  final String? initialValue;
  final String hint;
  final ValueChanged<String>? onChanged;
  final FormFieldValidator<String>? validator;
  final int? maxLine;
  final Widget? icon;
  final TextEditingController? controller;
  final AutovalidateMode autoValidateMode;
  final FocusNode? focusNode;
  final Icon? prefixIcon;
  final bool? showDatePicker;
  final TextInputType inputType;
  final bool? obscureText;

  @override
  State<TextInput> createState() => _TextInputState();
}

class _TextInputState extends State<TextInput> {
  @override
  Widget build(BuildContext context) {
    return TextFormField(
      focusNode: widget.focusNode,
      controller: widget.controller,
      textInputAction: TextInputAction.next,
      obscureText: widget.obscureText ?? false,
      autovalidateMode: widget.autoValidateMode,
      cursorColor: Colors.grey,
      initialValue: widget.initialValue,
      maxLines: widget.maxLine,
      keyboardType: widget.inputType,
      autofocus: true,
      onTap: widget.showDatePicker!
          ? () async {
              DateTime? pickedDate = await showDatePicker(
                  context: context,
                  initialDate: DateTime.now(),
                  firstDate: DateTime(
                      2000), //DateTime.now() - not to allow to choose before today.
                  lastDate: DateTime(2101));

              if (pickedDate != null) {
                String formattedDate =
                    DateFormat('yyyy-MM-dd').format(pickedDate);

                setState(() {
                  widget.controller!.text =
                      formattedDate; //set output date to TextField value.
                });
              } else {}
            }
          : null,
      decoration: InputDecoration(
          isDense: true,
          hintText: widget.hint,
          suffix: widget.icon,
          prefix: widget.prefixIcon,
          prefixIconColor: Colors.black,
          fillColor: kTextFieldFilledColor,
          filled: true,
          hintStyle: const TextStyle(color: Colors.grey),
          enabledBorder: focusedBorder,
          focusedBorder: focusedBorder,
          focusedErrorBorder: focusedErrorBorder,
          errorBorder: errorBorder,
          border: enabledBorder),
      onChanged: widget.onChanged,
      validator: widget.validator,
    );
  }
}
