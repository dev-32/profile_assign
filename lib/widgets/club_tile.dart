import 'package:auto_size_text/auto_size_text.dart';
import 'package:flutter/material.dart';
import 'package:profile_assign/constants/colors.dart';
import 'package:profile_assign/constants/paths.dart';
import 'package:profile_assign/constants/text.dart';
import 'package:profile_assign/constants/text_styles.dart';
import 'package:profile_assign/utils/stat_container.dart';
import 'package:svg_flutter/svg.dart';

class ClubTile extends StatelessWidget {
  const ClubTile(
      {super.key,
      required this.headingText,
      required this.addr,
      required this.imgpath1,
      required this.subText1,
      required this.imgPath2,
      required this.subText2,
      required this.mainImagePath});
  final String mainImagePath;
  final String headingText;
  final String addr;
  final String imgpath1;
  final String subText1;
  final String imgPath2;
  final String subText2;

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Container(
      padding: const EdgeInsets.all(10),
      width: size.width * 0.9,
      decoration: BoxDecoration(
          color: Colors.white,
          boxShadow: [
            BoxShadow(
              color: AppColors.borderColor.withOpacity(0.5),
              blurRadius: 4,
              offset: const Offset(0, 4),
            ),
            BoxShadow(
              color: AppColors.borderColor.withOpacity(0.5),
              blurRadius: 6,
              offset: const Offset(0, 2),
            )
          ],
          border: Border.all(color: AppColors.borderColor),
          borderRadius: BorderRadius.circular(24)),
      child: Column(
        children: [
          Center(
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Container(
                  height: size.height * 0.15,
                  width: size.width * 0.25,
                  decoration: BoxDecoration(
                      image: DecorationImage(
                          image: AssetImage(mainImagePath), fit: BoxFit.cover),
                      borderRadius: BorderRadius.circular(18)),
                  child: Stack(
                    children: [
                      Container(
                        height: 36,
                        width: 36,
                        decoration: BoxDecoration(
                            border: Border.all(color: AppColors.borderColor),
                            color: AppColors.grayColor,
                            borderRadius: const BorderRadius.only(
                                topLeft: Radius.circular(18),
                                bottomRight: Radius.circular(16))),
                        child: Center(
                          child: SvgPicture.asset(AppPath.dice),
                        ),
                      )
                    ],
                  ),
                ),
                const SizedBox(
                  width: 15,
                ),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    SizedBox(
                      width: size.width * 0.5,
                      child: AutoSizeText(
                        maxLines: 2,
                        headingText,
                        style: AppTextStyles.headingText,
                      ),
                    ),
                    const SizedBox(
                      height: 5,
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: [
                        SvgPicture.asset(AppPath.address),
                        const SizedBox(
                          width: 5,
                        ),
                        AutoSizeText(
                          addr,
                          style: AppTextStyles.normalText
                              .copyWith(color: AppColors.subTextColor),
                        )
                      ],
                    ),
                  ],
                )
              ],
            ),
          ),
          const SizedBox(
            height: 15,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              StatContainer(
                  headText: AppText.meetUps,
                  iconPath: imgpath1,
                  subText: subText1),
              const SizedBox(
                width: 15,
              ),
              StatContainer(
                  headText: AppText.activeSince,
                  iconPath: imgPath2,
                  subText: subText2),
            ],
          ),
        ],
      ),
    );
  }
}
