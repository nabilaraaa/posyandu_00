import 'package:flutter/material.dart';
import 'package:posyandu/core/app_export.dart';
import 'package:posyandu/widgets/custom_elevated_button.dart';

class OnboardingScreen extends StatelessWidget {
  const OnboardingScreen({Key? key})
      : super(
          key: key,
        );

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: Container(
          width: double.maxFinite,
          padding: EdgeInsets.symmetric(vertical: 15.v),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              CustomImageView(
                imagePath: ImageConstant.imgImage7,
                height: 458.v,
                width: 393.h,
              ),
              SizedBox(height: 35.v),
              Container(
                width: 234.h,
                margin: EdgeInsets.only(left: 22.h),
                child: Text(
                  "Selamat datang di Aplikasi POSYANDU",
                  maxLines: 2,
                  overflow: TextOverflow.ellipsis,
                  style: theme.textTheme.headlineSmall,
                ),
              ),
              SizedBox(height: 14.v),
              Container(
                width: 312.h,
                margin: EdgeInsets.only(
                  left: 22.h,
                  right: 58.h,
                ),
                child: Text(
                  "di mana setiap langkah kecil sang bayi menjadi cerita besar yang kami dukung dengan penuh perhatian!",
                  maxLines: 3,
                  overflow: TextOverflow.ellipsis,
                  style: CustomTextStyles.bodyMediumBlack90013,
                ),
              ),
              SizedBox(height: 22.v),
              CustomElevatedButton(
                text: "Daftar",
                margin: EdgeInsets.symmetric(horizontal: 22.h),
                buttonTextStyle: CustomTextStyles.titleMediumOnPrimary,
                alignment: Alignment.center,
              ),
              SizedBox(height: 6.v),
              Padding(
                padding: EdgeInsets.only(left: 91.h),
                child: Row(
                  children: [
                    Padding(
                      padding: EdgeInsets.only(top: 1.v),
                      child: Text(
                        "Sudah punya akun?",
                        style: CustomTextStyles.bodyMediumBlack90013,
                      ),
                    ),
                    Padding(
                      padding: EdgeInsets.only(left: 5.h),
                      child: Text(
                        "Masuk",
                        style: CustomTextStyles.labelLargePoppinsPrimary,
                      ),
                    ),
                  ],
                ),
              ),
              SizedBox(height: 5.v),
            ],
          ),
        ),
      ),
    );
  }
}
