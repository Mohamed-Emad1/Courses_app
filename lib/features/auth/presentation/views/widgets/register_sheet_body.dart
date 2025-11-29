import 'package:course_learning/core/shared/custom_button.dart';
import 'package:course_learning/core/shared/custom_text_form_field.dart';
import 'package:course_learning/core/utils/styles.dart';
import 'package:course_learning/features/auth/data/models/register_model.dart';
import 'package:course_learning/features/auth/presentation/manager/auth_cubit/auth_cubit.dart';
import 'package:course_learning/features/auth/presentation/views/widgets/have_an_account.dart';
import 'package:course_learning/generated/l10n.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:gap/gap.dart';

class RegisterSheetBody extends StatefulWidget {
  const RegisterSheetBody({super.key});

  @override
  State<RegisterSheetBody> createState() => _RegisterSheetBodyState();
}

class _RegisterSheetBodyState extends State<RegisterSheetBody> {
  final GlobalKey<FormState> _formKey = GlobalKey<FormState>();
  AutovalidateMode _autoValidateMode = AutovalidateMode.disabled;
  String? _email;
  String? _password;
  String? _phoneNumber;
  String? _firstName;
  String? _lastName;
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
            const Gap(10),
            Text(S.of(context).register, style: AppStyles.regular18),
            const Gap(26),

            const Gap(26),
            CustomTextFormField(
              hintText: S.of(context).first_name,
              onSaved: (newValue) => _firstName = newValue,
            ),
            const Gap(35),
            CustomTextFormField(
              hintText: S.of(context).last_name,
              onSaved: (newValue) => _lastName = newValue,
            ),
            const Gap(35),
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
            const Gap(35),
            CustomTextFormField(
              hintText: S.of(context).phoneNumber,
              onSaved: (newValue) => _phoneNumber = newValue,
            ),
            const Gap(26),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 45),
              child: SizedBox(
                width: double.infinity,
                child: CustomButton(
                  text: S.of(context).register,
                  onPressed: () {
                    if (_formKey.currentState!.validate()) {
                      _formKey.currentState!.save();
                      BlocProvider.of<AuthCubit>(context).register(
                        user: RegisterModel(
                          email: _email!,
                          password: _password!,
                          phoneNumber: _phoneNumber!,
                          firstName: _firstName!,
                          lastName: _lastName!,
                        ),
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
            const HaveAnAccount(),
            const Gap(70),
          ],
        ),
      ),
    );
  }
}
