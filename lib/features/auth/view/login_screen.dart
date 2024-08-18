import 'package:awesome_dialog/awesome_dialog.dart';
import 'package:eg201112469957/common/widget/app_text_button.dart';
import 'package:eg201112469957/common/widget/text_input.dart';
import 'package:eg201112469957/common/widget/vertical_spacer.dart';
import 'package:eg201112469957/core/app_styles.dart';
import 'package:eg201112469957/features/auth/auth_cubit/auth_cubit.dart';
import 'package:eg201112469957/features/auth/auth_cubit/auth_states.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:go_router/go_router.dart';
import 'package:intl_phone_field/intl_phone_field.dart';

import '../../../core/app_router/routes.dart';

class LoginScreen extends StatefulWidget {
  const LoginScreen({super.key});

  @override
  State<LoginScreen> createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  bool obscurePassword = true;
  TextEditingController mobileController = TextEditingController();
  TextEditingController passwordController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(16),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              const VerticalSpacer(
                height: 80,
              ),
              Align(
                  alignment: Alignment.centerLeft,
                  child: Text(
                    "Login",
                    style: k24RegularTextStyle.copyWith(color: Colors.black),
                  )),
              const VerticalSpacer(
                height: 34,
              ),
              Align(
                alignment: Alignment.centerLeft,
                child: Text(
                  "Mobile Number",
                  style: k18RegularTextStyle.copyWith(color: Colors.black),
                ),
              ),
              const VerticalSpacer(),
              IntlPhoneField(
                controller: mobileController,
                cursorHeight: 16,
                cursorWidth: 1,
                cursorColor: kActivateAccountColor,
                showDropdownIcon: false,
                validator: (p0) {
                  if (p0!.number.isEmpty) {
                    return "mobile number is Required";
                  } else {
                    return null;
                  }
                },
                disableLengthCheck: true,
                decoration: const InputDecoration(
                    focusedBorder: focusedBorder,
                    focusedErrorBorder: focusedErrorBorder,
                    errorBorder: errorBorder,
                    border: focusedBorder,
                    enabledBorder: focusedBorder),
                initialCountryCode: 'SA',
                onSaved: (newValue) => mobileController.text = newValue!.number,
              ),
              const VerticalSpacer(),
              Align(
                alignment: Alignment.centerLeft,
                child: Text(
                  "Password",
                  style: k18RegularTextStyle.copyWith(color: Colors.black),
                ),
              ),
              const VerticalSpacer(),
              TextInput(
                hint: "",
                controller: passwordController,
                obscureText: obscurePassword ? true : false,
                maxLine: 1,
                validator: (value) {
                  if (value!.isEmpty) {
                    return "password is Required";
                  } else {
                    return null;
                  }
                },
                icon: InkWell(
                    onTap: () {
                      setState(() {
                        obscurePassword = !obscurePassword;
                      });
                    },
                    child: obscurePassword
                        ? const Icon(Icons.visibility_off)
                        : const Icon(Icons.visibility)),
              ),
              const VerticalSpacer(
                height: 24,
              ),
              BlocConsumer<AuthCubit, AuthState>(
                builder: (context, state) {
                  return state is AuthLoadingState
                      ? const Center(
                          child: CircularProgressIndicator(),
                        )
                      : Container(
                          padding: const EdgeInsets.all(8),
                          width: double.infinity,
                          child: AppTextButton(
                            title: "Login",
                            onPress: () async {
                              if (mobileController.text.isNotEmpty &&
                                  passwordController.text.isNotEmpty) {
                                await BlocProvider.of<AuthCubit>(context).login(
                                  mobile: mobileController.text,
                                  password: passwordController.text,
                                );
                              }
                            },
                          ),
                        );
                },
                listener: (context, state) {
                  if (state is LoginSuccessState) {
                    context.go(Routes.kHome);
                  } else if (state is AuthFailureState) {
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
              ),
            ],
          ),
        ),
      ),
    );
  }
}
