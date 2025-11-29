import 'dart:developer';

import 'package:course_learning/core/routing.dart';
import 'package:course_learning/core/shared/build_snack_bar.dart';
import 'package:course_learning/core/shared/custom_button.dart';
import 'package:course_learning/core/shared/custom_text_form_field.dart';
import 'package:course_learning/core/utils/styles.dart';
import 'package:course_learning/features/auth/presentation/manager/auth_cubit/auth_cubit.dart';
import 'package:course_learning/features/auth/presentation/views/widgets/dont_have_an_account.dart';
import 'package:course_learning/generated/l10n.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:gap/gap.dart';
import 'package:go_router/go_router.dart';

class LoginSheetBody extends StatefulWidget {
  const LoginSheetBody({super.key});

  @override
  State<LoginSheetBody> createState() => _LoginSheetBodyState();
}

class _LoginSheetBodyState extends State<LoginSheetBody> {
  final GlobalKey<FormState> _formKey = GlobalKey<FormState>();
  AutovalidateMode _autoValidateMode = AutovalidateMode.disabled;
  String? _email;
  String? _password;
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 16),
      child: Form(
        key: _formKey,
        autovalidateMode: _autoValidateMode,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const Gap(56),
            Text(S.of(context).login, style: AppStyles.regular18),
            const Gap(26),

            const Gap(26),
            CustomTextFormField(
              hintText: S.of(context).email,
              onSaved: (newValue) => _email = newValue,
            ),
            const Gap(35),
            CustomTextFormField(
              hintText: S.of(context).password,
              obscureText: true,
              onSaved: (newValue) => _password = newValue,
            ),
            const Gap(26),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 45),
              child: SizedBox(
                width: double.infinity,
                child: CustomButton(
                  text: S.of(context).login,
                  onPressed: () {
                    log("i am here");
                    if (_formKey.currentState!.validate()) {
                      _formKey.currentState!.save();

                      BlocProvider.of<AuthCubit>(
                        context,
                      ).login(email: _email!, password: _password!);
                      BlocListener<AuthCubit, AuthState>(
                        listener: (context, state) {
                          if (state is AuthSuccess) {
                            GoRouter.of(context).pushNamed(AppRouter.kHome);
                          } else if (state is AuthError) {
                            buildSnackBar(context, state.message);
                          }
                        },
                      );

                      //! do action send data to backend
                    } else {
                      setState(() {
                        _autoValidateMode = AutovalidateMode.always;
                      });
                    }
                  },
                ),
              ),
            ),
            const Gap(25),
            const DontHaveAnAccount(),
            const Gap(70),
          ],
        ),
      ),
    );
  }
}
