import 'package:doc_app/core/themes/textstyle.dart';
import 'package:doc_app/features/onboarding/widgets/doc_image_text.dart';
import 'package:doc_app/features/onboarding/widgets/doc_logoandname.dart';
import 'package:doc_app/features/onboarding/widgets/get_start_button.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class OnboardingScreen extends StatelessWidget {
  const OnboardingScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: SingleChildScrollView(
          child: Padding(
            padding:  EdgeInsets.only( 
              top: 30.h,
              bottom: 30.h
            ),
            child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
              children: [
                const DocLogoandname(),
                SizedBox(height: 30.h),
                const DocImageAndText(),
                SizedBox(height: 20.h),
                Padding(
                  padding: const EdgeInsets.all(10),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children:[
                      Text(
                        textAlign: TextAlign.center,
                        "Manage and schedule all of your medical appointments easily\nwith Docdoc to get a new experience.",
                      style: TextStyles.font11GrayRegular
                      ),
                      SizedBox(height: 20.h),
                      GetStartedButton()
                    ]
                  ),
                )


              ],
            ),
          ),
        )) 
    );
  }
} 