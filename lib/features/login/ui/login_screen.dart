import 'package:doctor/core/helpers/app_regex.dart';
import 'package:doctor/core/theming/text_style.dart';
import 'package:doctor/core/widgets/app_text_button.dart';
import 'package:doctor/core/widgets/app_text_form_field.dart';
import 'package:doctor/features/login/ui/widget/do_not_have_accont.dart';
import 'package:doctor/features/login/ui/widget/terms_condition.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:gap/gap.dart';

class LoginScreen extends StatefulWidget {
  const LoginScreen({super.key});

  @override
  State<LoginScreen> createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  bool isObscureText = true;
  final formKey = GlobalKey<FormState>();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Padding(
          padding: EdgeInsets.symmetric(horizontal: 30.w, vertical: 30.h),
          child: SingleChildScrollView(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  'Welcome Back',
                  style: TextStyles.font24BlueBold,
                ),
                Gap(8.h),
                Text(
                  'We\'re excited to have you back, can\'t wait to see what you\'ve been up to since you last logged in.',
                  style: TextStyles.font14GrayRegular,
                ),
                Gap(36.h),
                Form(
                    key: formKey,
                    child: Column(
                      children: [
                        AppTextFormField(
                          hintText: 'email',
                          suffixIcon: const Icon(
                            Icons.email_outlined,
                          ),
                          validator: (value) {
                            if (value == null ||
                                value.isEmpty ||
                                !AppRegex.isEmailValid(value)) {
                              return 'Please enter a valid email';
                            }
                          },
                        ),
                        Gap(18.h),
                        AppTextFormField(
                          hintText: 'Password',
                          isObscureText: isObscureText,
                          suffixIcon: GestureDetector(
                            onTap: () {
                              setState(() {
                                isObscureText = !isObscureText;
                              });
                            },
                            child: Icon(
                              isObscureText
                                  ? Icons.visibility_off_outlined
                                  : Icons.visibility_outlined,
                            ),
                          ),
                          validator: (value) {
                            if (value == null ||
                                value.isEmpty ||
                                !AppRegex.isEmailValid(value)) {
                              return 'Please enter a valid email';
                            }
                          },
                        ),
                        Gap(18.h),
                        Align(
                          alignment: AlignmentDirectional.centerEnd,
                          child: Text(
                            'Forgot Password?',
                            style: TextStyles.font12BlueRegular,
                          ),
                        ),
                        Gap(40.h),
                        AppTextButton(
                          buttonText: "Login",
                          textStyle: TextStyles.font16WhiteSemiBold,
                          onPressed: () {},
                        ),
                        Gap(16.h),
                        const TermsAndConditionsText(),
                        Gap(60.h),
                        const DontHaveAccountText(),
                      ],
                    ))
              ],
            ),
          ),
        ),
      ),
    );
  }
}
