import 'package:auto_size_text/auto_size_text.dart';
import 'package:flutter/material.dart';
import 'package:profile_assign/constants/colors.dart';
import 'package:profile_assign/constants/text_styles.dart';
import 'package:svg_flutter/svg.dart';

class StatContainer extends StatelessWidget {
  const StatContainer(
      {super.key,
      required this.headText,
      required this.iconPath,
      required this.subText});
  final String headText;
  final String iconPath;
  final String subText;

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Container(
      height: size.height * 0.12,
      width: size.width * 0.4,
      decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(16), color: AppColors.grayColor),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          AutoSizeText(
            headText,
            style: AppTextStyles.normalText
                .copyWith(color: AppColors.subTextColor),
          ),
          const SizedBox(
            height: 5,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              SvgPicture.asset(iconPath),
              const SizedBox(
                width: 5,
              ),
              AutoSizeText(subText, style: AppTextStyles.headingText),
            ],
          )
        ],
      ),
    );
  }
}
