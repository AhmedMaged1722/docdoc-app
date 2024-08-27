import 'package:doctor/core/helpers/extention.dart';
import 'package:doctor/core/routing/routes.dart';
import 'package:doctor/core/theming/text_style.dart';
import 'package:doctor/core/widgets/app_text_button.dart';
import 'package:doctor/features/onboarding/widgets/image_and_text.dart';
import 'package:doctor/features/onboarding/widgets/logo_and_name.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:gap/gap.dart';

class OnboardingScreen extends StatelessWidget {
  const OnboardingScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
          child: Padding(
        padding: EdgeInsets.only(
          top: 30.h,
          left: 20.w,
          right: 20.w,
          bottom: 30.h,
        ),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            const LogoAndName(),
            Gap(30.h),
            const ImageAndText(),
            Padding(
              padding: EdgeInsets.symmetric(horizontal: 20.w),
              child: Column(
                children: [
                  Text(
                    'Manage and schedule all of your medical appointments easily with Docdoc to get a new experience',
                    textAlign: TextAlign.center,
                    style: TextStyles.font13GrayRegular,
                  ),
                  Gap(30.h),
                  AppTextButton(
                    buttonText: "Get Started",
                    textStyle: TextStyles.font16WhiteSemiBold,
                    onPressed: () {
                      context.pushNamed(Routes.loginScreen);
                    },
                  )
                ],
              ),
            ),
          ],
        ),
      )),
    );
  }
}
