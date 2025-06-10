import 'package:doc_app/core/themes/textstyle.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_svg/svg.dart';

class DocImageAndText extends StatelessWidget {
  const DocImageAndText({super.key});

  @override
  Widget build(BuildContext context) {
    return Stack(
      alignment: Alignment.topCenter,
      children: [
        SvgPicture.asset("assets/svgs/docdoc_logo_low_opacity.svg"),
        Container(
          foregroundDecoration: BoxDecoration(
            gradient: LinearGradient(
              begin: Alignment.bottomCenter,
              end: Alignment.topCenter,
              stops: const [0.14, 0.4],
              colors: [
                Colors.white,
                Colors.white.withOpacity(0.0),
              ],
            ),
          ),
          child: Image.asset("assets/images/onboarding_doctor.png"),
        ),
        Positioned(
          bottom: 30,
          left: 0,
          right: 0,
          child: Text(
            textAlign: TextAlign.center,
            "Best Doctor\nAppointment App",
            style: TextStyles.font32BlueBold.copyWith(height: 1.4),
          ),
        )
      ],
    );
  }
}
