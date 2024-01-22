import 'package:flutter/material.dart';
import 'package:posyandu/core/app_export.dart';
import 'package:posyandu/widgets/app_bar/appbar_title.dart';
import 'package:posyandu/widgets/app_bar/custom_app_bar.dart';
import 'package:posyandu/widgets/custom_icon_button.dart';

// ignore_for_file: must_be_immutable
class AkunPage extends StatelessWidget {
  const AkunPage({Key? key})
      : super(
          key: key,
        );

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: _buildAppBar(context),
        body: Container(
          width: double.maxFinite,
          padding: EdgeInsets.symmetric(
            horizontal: 24.h,
            vertical: 6.v,
          ),
          child: Column(
            children: [
              SizedBox(
                height: 120.v,
                width: 124.h,
                child: Stack(
                  alignment: Alignment.bottomRight,
                  children: [
                    CustomImageView(
                      imagePath: ImageConstant.imgImage,
                      height: 120.adaptSize,
                      width: 120.adaptSize,
                      radius: BorderRadius.circular(
                        60.h,
                      ),
                      alignment: Alignment.centerLeft,
                    ),
                    CustomIconButton(
                      height: 40.adaptSize,
                      width: 40.adaptSize,
                      padding: EdgeInsets.all(10.h),
                      alignment: Alignment.bottomRight,
                      child: CustomImageView(
                        imagePath: ImageConstant.imgCamera1,
                      ),
                    ),
                  ],
                ),
              ),
              SizedBox(height: 14.v),
              Text(
                "Nindia Kalsyara",
                style: CustomTextStyles.headlineSmallBluegray900Bold,
              ),
              SizedBox(height: 2.v),
              Text(
                "nindakalsyara@email.com",
                style: CustomTextStyles.bodyLargeBluegray40016,
              ),
              SizedBox(height: 31.v),
              Divider(),
              SizedBox(height: 31.v),
              _buildProfileDetails(context),
              SizedBox(height: 5.v),
            ],
          ),
        ),
      ),
    );
  }

  /// Section Widget
  PreferredSizeWidget _buildAppBar(BuildContext context) {
    return CustomAppBar(
      centerTitle: true,
      title: AppbarTitle(
        text: "Profile",
      ),
    );
  }

  /// Section Widget
  Widget _buildProfileDetails(BuildContext context) {
    return SizedBox(
      height: 199.v,
      width: 343.h,
      child: Stack(
        alignment: Alignment.topLeft,
        children: [
          Align(
            alignment: Alignment.centerRight,
            child: SizedBox(
              width: 228.h,
              child: Text(
                "Razen Teknologi\n32 January 1999\nMale\nrazenteknologi@email.com\n(+09) 5678 1234",
                maxLines: 5,
                overflow: TextOverflow.ellipsis,
                textAlign: TextAlign.right,
                style: theme.textTheme.titleMedium!.copyWith(
                  height: 2.50,
                ),
              ),
            ),
          ),
          Align(
            alignment: Alignment.topLeft,
            child: Text(
              "Full name Birthdate Gender Email Phone number",
              style: CustomTextStyles.bodyLargeBluegray400,
            ),
          ),
        ],
      ),
    );
  }
}
