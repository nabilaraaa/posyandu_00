import 'package:flutter/material.dart';
import 'package:posyandu/core/app_export.dart';
import 'package:posyandu/widgets/custom_icon_button.dart';

class AkunOnePage extends StatelessWidget {
  const AkunOnePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
            body: Container(
                width: double.maxFinite,
                decoration: AppDecoration.fillOnPrimary,
                child: Container(
                    padding:
                        EdgeInsets.symmetric(horizontal: 22.h, vertical: 56.v),
                    child: Column(children: [
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
                                    radius: BorderRadius.circular(60.h),
                                    alignment: Alignment.centerLeft),
                                CustomIconButton(
                                    height: 40.adaptSize,
                                    width: 40.adaptSize,
                                    padding: EdgeInsets.all(10.h),
                                    alignment: Alignment.bottomRight,
                                    child: CustomImageView(
                                        imagePath: ImageConstant.imgCamera1))
                              ])),
                      SizedBox(height: 14.v),
                      Text("Nindia Kalsyara",
                          style: CustomTextStyles.headlineSmallBluegray900Bold),
                      SizedBox(height: 2.v),
                      Text("nindakalsyara@email.com",
                          style: CustomTextStyles.bodyLargeBluegray40016),
                      SizedBox(height: 41.v),
                      Divider(indent: 9.h),
                      SizedBox(height: 23.v),
                      Padding(
                          padding: EdgeInsets.only(left: 4.h, right: 2.h),
                          child: _buildNormalCard(context,
                              map: ImageConstant.imgUserProfile4,
                              myProfile: "Profile", onTapNormalCard: () {
                            onTapNormalCard(context);
                          })),
                      SizedBox(height: 16.v),
                      Padding(
                          padding: EdgeInsets.only(left: 4.h, right: 2.h),
                          child: _buildNormalCard(context,
                              map: ImageConstant.imgMap, myProfile: "DataKu")),
                      SizedBox(height: 16.v),
                      Padding(
                          padding: EdgeInsets.only(left: 4.h, right: 2.h),
                          child: _buildNormalCard(context,
                              map: ImageConstant.imgNotificationBell,
                              myProfile: "Notifikasi")),
                      SizedBox(height: 16.v),
                      Padding(
                          padding: EdgeInsets.only(left: 4.h, right: 2.h),
                          child: _buildNormalCard(context,
                              map: ImageConstant.imgShieldCheckmark,
                              myProfile: "Help center")),
                      SizedBox(height: 16.v),
                      _buildNormalCard5(context),
                      SizedBox(height: 5.v)
                    ])))));
  }

  /// Section Widget
  Widget _buildNormalCard5(BuildContext context) {
    return Container(
        margin: EdgeInsets.only(left: 4.h, right: 2.h),
        padding: EdgeInsets.all(8.h),
        decoration: AppDecoration.fillLightBlue
            .copyWith(borderRadius: BorderRadiusStyle.roundedBorder8),
        child: Row(mainAxisSize: MainAxisSize.max, children: [
          Container(
              height: 40.adaptSize,
              width: 40.adaptSize,
              padding: EdgeInsets.all(8.h),
              decoration: AppDecoration.fillDeepOrange
                  .copyWith(borderRadius: BorderRadiusStyle.roundedBorder8),
              child: CustomImageView(
                  imagePath: ImageConstant.imgArrowRightDeepOrange400,
                  height: 24.adaptSize,
                  width: 24.adaptSize,
                  alignment: Alignment.center)),
          Padding(
              padding: EdgeInsets.only(left: 16.h, top: 10.v, bottom: 5.v),
              child: Text("Log Out", style: theme.textTheme.titleMedium))
        ]));
  }

  /// Common widget
  Widget _buildNormalCard(
    BuildContext context, {
    required String map,
    required String myProfile,
    Function? onTapNormalCard,
  }) {
    return GestureDetector(
        onTap: () {
          onTapNormalCard!.call();
        },
        child: Container(
            padding: EdgeInsets.all(8.h),
            decoration: AppDecoration.fillLightBlue
                .copyWith(borderRadius: BorderRadiusStyle.roundedBorder8),
            child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                mainAxisSize: MainAxisSize.min,
                children: [
                  Container(
                      height: 40.adaptSize,
                      width: 40.adaptSize,
                      padding: EdgeInsets.all(8.h),
                      decoration: AppDecoration.fillTeal.copyWith(
                          borderRadius: BorderRadiusStyle.roundedBorder8),
                      child: CustomImageView(
                          imagePath: map,
                          height: 24.adaptSize,
                          width: 24.adaptSize,
                          alignment: Alignment.center)),
                  Padding(
                      padding:
                          EdgeInsets.only(left: 16.h, top: 7.v, bottom: 8.v),
                      child: Text(myProfile,
                          style: theme.textTheme.titleMedium!
                              .copyWith(color: appTheme.blueGray900))),
                  Spacer(),
                  CustomImageView(
                      imagePath: ImageConstant.imgArrowRight,
                      height: 24.adaptSize,
                      width: 24.adaptSize,
                      margin: EdgeInsets.symmetric(vertical: 8.v))
                ])));
  }

  onTapNormalCard(BuildContext context) {
    // TODO: implement Actions
  }
}
