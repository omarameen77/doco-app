import 'package:doc_app/core/routing/app_routers.dart';
import 'package:doc_app/core/routing/routes.dart' as Routes;
import 'package:doc_app/core/themes/colors.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class DocApp extends StatelessWidget {
  final AppRoutes appRoutes;
  const DocApp({super.key, required this.appRoutes});

  @override
  Widget build(BuildContext context) {
    return ScreenUtilInit(
      designSize: const Size(375, 812),
      minTextAdapt: true,
      child: MaterialApp(
        theme:ThemeData(
          primaryColor: AppColors.mainblue,
          scaffoldBackgroundColor:Colors.white
          ),
        debugShowCheckedModeBanner: false,
        initialRoute: Routes.onBoardingScreen,
        onGenerateRoute: AppRoutes().generateRoute,
       
      ),
    );
  }
}
