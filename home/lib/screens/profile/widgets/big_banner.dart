import 'package:core/core.dart';
import 'package:flutter/material.dart';
import 'package:home/generated_images.dart';
import 'package:home/l10n/generated/l10n.dart';

class BigBanner extends StatelessWidget {
  final VoidCallback press;
  const BigBanner({Key? key, required this.press}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: press,
      child: Container(
          padding: AppConsts.kMarginAll,
          height: 185,
          child: Stack(
            children: [
              Positioned.fill(
                  child: ClipRRect(
                borderRadius: BorderRadius.circular(24),
                child: Image.asset(
                  Img.homeBanner,
                  fit: BoxFit.cover,
                ),
              )),
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Padding(
                    padding:
                        const EdgeInsets.only(left: AppConsts.kDefaultPadding),
                    child: Text(S.current.packageService,
                        style: const TextStyle(color: Colors.white)),
                  ),
                  Container(
                    margin: const EdgeInsets.only(
                        top: AppConsts.kDefaultPadding,
                        left: AppConsts.kDefaultPadding),
                    padding:
                        const EdgeInsets.symmetric(vertical: 8, horizontal: 16),
                    decoration: BoxDecoration(
                        color: AppColors.white,
                        borderRadius: BorderRadius.circular(18)),
                    child: Text(
                      S.current.registerNow,
                      textAlign: TextAlign.center,
                      style: const TextStyle(
                          fontSize: 12,
                          color: AppColors.primary,
                          fontWeight: FontWeight.w700),
                    ),
                  )
                ],
              )
            ],
          )),
    );
  }
}
