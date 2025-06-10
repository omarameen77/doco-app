import 'package:doc_app/core/themes/textstyle.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

class DocLogoandname extends StatelessWidget {
  const DocLogoandname({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        SvgPicture.asset('assets/svgs/docdoc_logo.svg'),
        SizedBox(width: 10),
        Text(
          'Docdoc',
          style: TextStyles.font24BlackBold,
        ),
      ],
    );
  }
}