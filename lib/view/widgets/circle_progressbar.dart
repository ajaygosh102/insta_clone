import 'package:flutter/material.dart';
import 'package:riafy_flutter_app/config/theme.dart';

Widget showCircleProgress({double size = 30}) => Align(
      alignment: Alignment.center,
      child: SizedBox(
        width: size,
        height: size,
        child: CircularProgressIndicator(
          backgroundColor: AppColors.purpleShadow,
          valueColor: new AlwaysStoppedAnimation<Color>(AppColors.darkGray),
        ),
      ),
    );
