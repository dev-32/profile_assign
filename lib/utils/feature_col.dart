import 'package:auto_size_text/auto_size_text.dart';
import 'package:flutter/material.dart';
import 'package:profile_assign/constants/paths.dart';
import 'package:profile_assign/constants/text.dart';
import 'package:profile_assign/constants/text_styles.dart';
import 'package:svg_flutter/svg.dart';

class FeatureCol extends StatelessWidget {
  const FeatureCol({super.key, required this.imgPath, required this.text});
  final String imgPath;
  final String text;
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return GestureDetector(
      onTap: () {
        showDialog(
            context: context,
            builder: (context) => AlertDialog(
                  insetPadding: const EdgeInsets.all(0),
                  contentPadding: const EdgeInsets.all(0),
                  iconPadding: const EdgeInsets.all(0),
                  buttonPadding: const EdgeInsets.all(0),
                  content: Container(
                    decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.circular(18)),
                    width: size.width * 0.85,
                    height: size.height * 0.55,
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Padding(
                          padding: const EdgeInsets.symmetric(horizontal: 10.0),
                          child: SizedBox(
                            height: size.height * 0.09,
                            child: GestureDetector(
                                onTap: () {
                                  Navigator.pop(context);
                                },
                                child: const Icon(Icons.close)),
                          ),
                        ),
                        Center(
                          child: SvgPicture.asset(
                            imgPath,
                            height: size.height * 0.15,
                            width: size.width * 0.5,
                          ),
                        ),
                        const SizedBox(
                          height: 15,
                        ),
                        Padding(
                          padding: const EdgeInsets.symmetric(horizontal: 10),
                          child: Row(
                            children: [
                              const Expanded(
                                child: Divider(
                                  color: Color(0xffABABAE),
                                  height: 1,
                                ),
                              ),
                              const SizedBox(
                                width: 10,
                              ),
                              Text(
                                text,
                                style: AppTextStyles.headingText,
                              ),
                              const SizedBox(
                                width: 10,
                              ),
                              const Expanded(
                                child: Divider(
                                  color: Color(0xffABABAE),
                                  height: 1,
                                ),
                              )
                            ],
                          ),
                        ),
                        const SizedBox(
                          height: 15,
                        ),
                        Padding(
                          padding: const EdgeInsets.symmetric(horizontal: 10),
                          child: SizedBox(
                            height: size.height * 0.1,
                            child: AutoSizeText(
                                textAlign: TextAlign.center,
                                style: AppTextStyles.normalText,
                                text == AppText.veteran
                                    ? AppText.veteranDesc
                                    : (text == AppText.og
                                        ? AppText.ogDesc
                                        : AppText.innerCirleDesc)),
                          ),
                        ),
                        const SizedBox(
                          height: 15,
                        ),
                        Padding(
                          padding: const EdgeInsets.symmetric(horizontal: 10.0),
                          child: ElevatedButton(
                              onPressed: () {
                                Navigator.pop(context);
                              },
                              child: SizedBox(
                                  width: double.infinity,
                                  child: Center(
                                    child: Text(
                                      AppText.cool,
                                      style: AppTextStyles.normalText
                                          .copyWith(color: Colors.white),
                                    ),
                                  ))),
                        )
                      ],
                    ),
                  ),
                ));
      },
      child: Column(
        children: [
          SvgPicture.asset(imgPath),
          Text(
            text,
            style: AppTextStyles.boldText,
          ),
        ],
      ),
    );
  }
}
