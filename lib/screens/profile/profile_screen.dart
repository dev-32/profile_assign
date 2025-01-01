import 'package:auto_size_text/auto_size_text.dart';
import 'package:flutter/material.dart';
import 'package:profile_assign/constants/colors.dart';
import 'package:profile_assign/constants/paths.dart';
import 'package:profile_assign/constants/text.dart';
import 'package:profile_assign/constants/text_styles.dart';
import 'package:profile_assign/utils/feature_col.dart';
import 'package:profile_assign/utils/stat_container.dart';
import 'package:profile_assign/widgets/club_tile.dart';
import 'package:svg_flutter/svg.dart';

class ProfileScreen extends StatelessWidget {
  const ProfileScreen({super.key});

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Scaffold(
      appBar: AppBar(
        scrolledUnderElevation: 0,
        centerTitle: false,
        leading: GestureDetector(
          onTap: () {},
          child: SvgPicture.asset(AppPath.crossIcon),
        ),
        title: Text(
          AppText.profile,
          style: AppTextStyles.normalText,
        ),
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            const SizedBox(
              height: 20,
            ),
            Center(
              child: SizedBox(
                height: 200,
                width: 200,
                child: Image.asset(AppPath.catImg),
              ),
            ),
            const SizedBox(
              height: 15,
            ),
            Text(
              AppText.name,
              style: AppTextStyles.headingText,
            ),
            const SizedBox(
              height: 15,
            ),
            Center(
              child: SizedBox(
                width: size.width * 0.6,
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    FeatureCol(imgPath: AppPath.veteran, text: AppText.veteran),
                    FeatureCol(imgPath: AppPath.og, text: AppText.og),
                    FeatureCol(
                        imgPath: AppPath.innerCircle,
                        text: AppText.innerCircle),
                  ],
                ),
              ),
            ),
            const SizedBox(
              height: 15,
            ),
            Center(
                child: SizedBox(
                    width: size.width * 0.9,
                    child: AutoSizeText(
                      maxLines: 3,
                      textAlign: TextAlign.center,
                      AppText.descp,
                      style: AppTextStyles.normalText,
                    ))),
            const SizedBox(
              height: 15,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                StatContainer(
                    headText: AppText.meetUps,
                    iconPath: AppPath.happyEmoji,
                    subText: "2"),
                const SizedBox(
                  width: 15,
                ),
                StatContainer(
                    headText: AppText.activeSince,
                    iconPath: AppPath.calendarIcon,
                    subText: "Jun 24"),
              ],
            ),
            const SizedBox(
              height: 20,
            ),
            Row(
              children: [
                Expanded(
                  child: Divider(
                    color: AppColors.dividerColor,
                    thickness: 1,
                  ),
                ),
                const SizedBox(
                  width: 10,
                ),
                Text(
                  AppText.activeClubs,
                  style: AppTextStyles.boldText,
                ),
                const SizedBox(
                  width: 10,
                ),
                Expanded(
                  child: Divider(
                    color: AppColors.dividerColor,
                    thickness: 1,
                  ),
                ),
              ],
            ),
            const SizedBox(
              height: 20,
            ),
            ClubTile(
              mainImagePath: AppPath.tileImg1,
              headingText: AppText.poets,
              addr: AppText.add1,
              imgpath1: AppPath.starEmoji,
              subText1: "12",
              imgPath2: AppPath.calendarIcon,
              subText2: "Jun 24",
            ),
            const SizedBox(
              height: 15,
            ),
            ClubTile(
              mainImagePath: AppPath.tileImg2,
              headingText: AppText.popCul,
              addr: AppText.add1,
              imgpath1: AppPath.happyEmoji,
              subText1: "1",
              imgPath2: AppPath.calendarIcon,
              subText2: "Jun 24",
            ),
            const SizedBox(
              height: 80,
            )
          ],
        ),
      ),
    );
  }
}
