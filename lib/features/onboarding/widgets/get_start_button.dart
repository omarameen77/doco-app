import 'package:doc_app/core/helpers/extension.dart';
import 'package:doc_app/core/routing/routes.dart' as Routes;
import 'package:doc_app/core/themes/colors.dart';
import 'package:doc_app/core/themes/textstyle.dart';
import 'package:flutter/material.dart';


class GetStartedButton extends StatelessWidget {
  const GetStartedButton({super.key});

  @override
  Widget build(BuildContext context) {
    return TextButton(
      onPressed: () {
      context.pushNamed(Routes.loginScreen);
      },
      style: ButtonStyle(
        backgroundColor: MaterialStateProperty.all(AppColors.mainblue),
        tapTargetSize: MaterialTapTargetSize.shrinkWrap,
        minimumSize: MaterialStateProperty.all(
          const Size(double.infinity, 52),
        ),
        shape: MaterialStateProperty.all(
          RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(17),
          ),
        ),
      ),
      child: Text(
        'Get Started',
        style: TextStyles.font16WhiteMedium,
      ),
    );
  }
}