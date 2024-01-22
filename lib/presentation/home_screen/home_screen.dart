import 'package:calendar_date_picker2/calendar_date_picker2.dart';
import 'package:flutter/material.dart';
import 'package:posyandu/core/app_export.dart';
import 'package:posyandu/widgets/custom_bottom_bar.dart';
import 'package:posyandu/widgets/custom_elevated_button.dart';

class HomeScreen extends StatelessWidget {
  HomeScreen({Key? key})
      : super(
          key: key,
        );

  List<DateTime?> selectedDatesFromCalendar1 = [];

  GlobalKey<NavigatorState> navigatorKey = GlobalKey();

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: SizedBox(
          width: SizeUtils.width,
          child: SingleChildScrollView(
            child: Padding(
              padding: EdgeInsets.only(bottom: 5.v),
              child: Column(
                children: [
                  Container(
                    height: 21.v,
                    width: double.maxFinite,
                    decoration: BoxDecoration(
                      color: theme.colorScheme.onPrimary,
                    ),
                  ),
                  SizedBox(height: 15.v),
                  Align(
                    alignment: Alignment.centerLeft,
                    child: Padding(
                      padding: EdgeInsets.only(left: 30.h),
                      child: Text(
                        "Selamat Datang, Bunda Nindia!",
                        style: CustomTextStyles.titleMediumBlack900,
                      ),
                    ),
                  ),
                  SizedBox(height: 13.v),
                  _buildTwentyFourSection(context),
                  SizedBox(height: 20.v),
                  _buildNinetyNineSection(context),
                  SizedBox(height: 15.v),
                  Align(
                    alignment: Alignment.centerLeft,
                    child: Container(
                      width: 287.h,
                      margin: EdgeInsets.only(
                        left: 27.h,
                        right: 78.h,
                      ),
                      child: Text(
                        "Ibun, lihat data pertumbuhan Kalsyara di bulan November, yuk!",
                        maxLines: 2,
                        overflow: TextOverflow.ellipsis,
                        style: CustomTextStyles.bodyMediumBlack90014,
                      ),
                    ),
                  ),
                  SizedBox(height: 6.v),
                  _buildSangatBaikSection(context),
                  SizedBox(height: 21.v),
                  CustomImageView(
                    imagePath: ImageConstant.imgImage1,
                    height: 237.v,
                    width: 333.h,
                  ),
                ],
              ),
            ),
          ),
        ),
        bottomNavigationBar: _buildBottomBarSection(context),
      ),
    );
  }

  /// Section Widget
  Widget _buildTwentyFourSection(BuildContext context) {
    return Container(
      width: 349.h,
      margin: EdgeInsets.symmetric(horizontal: 22.h),
      padding: EdgeInsets.symmetric(
        horizontal: 10.h,
        vertical: 14.v,
      ),
      decoration: AppDecoration.fillCyan.copyWith(
        borderRadius: BorderRadiusStyle.roundedBorder20,
      ),
      child: Column(
        mainAxisSize: MainAxisSize.min,
        crossAxisAlignment: CrossAxisAlignment.start,
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Padding(
            padding: EdgeInsets.only(left: 1.h),
            child: Text(
              "ARTIKEL",
              style: CustomTextStyles.titleLargePink20001,
            ),
          ),
          SizedBox(height: 4.v),
          Text(
            "STUNTING",
            style: CustomTextStyles.titleLargeOrange200,
          ),
        ],
      ),
    );
  }

  /// Section Widget
  Widget _buildSeventyTwoSection(BuildContext context) {
    return Align(
      alignment: Alignment.centerLeft,
      child: Padding(
        padding: EdgeInsets.only(right: 59.h),
        child: Column(
          mainAxisSize: MainAxisSize.min,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Padding(
              padding: EdgeInsets.only(left: 2.h),
              child: Row(
                children: [
                  Text(
                    "Jadwal",
                    style: CustomTextStyles.bodyMediumBlack90014,
                  ),
                  Padding(
                    padding: EdgeInsets.only(left: 6.h),
                    child: RichText(
                      text: TextSpan(
                        children: [
                          TextSpan(
                            text: "POS",
                            style:
                                CustomTextStyles.titleMediumLexendExaffffc4df,
                          ),
                          TextSpan(
                            text: "YANDU",
                            style:
                                CustomTextStyles.titleMediumLexendExaffadddff,
                          ),
                        ],
                      ),
                      textAlign: TextAlign.left,
                    ),
                  ),
                ],
              ),
            ),
            SizedBox(height: 19.v),
            Align(
              alignment: Alignment.centerRight,
              child: Padding(
                padding: EdgeInsets.only(left: 15.h),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      "29",
                      style: theme.textTheme.labelLarge,
                    ),
                    Text(
                      "30",
                      style: theme.textTheme.labelLarge,
                    ),
                    Text(
                      "31",
                      style: theme.textTheme.labelLarge,
                    ),
                    Text(
                      "1",
                      style: theme.textTheme.labelLarge,
                    ),
                    Text(
                      "2",
                      style: theme.textTheme.labelLarge,
                    ),
                    Text(
                      "3",
                      style: theme.textTheme.labelLarge,
                    ),
                  ],
                ),
              ),
            ),
            SizedBox(height: 18.v),
            Align(
              alignment: Alignment.center,
              child: Padding(
                padding: EdgeInsets.only(
                  left: 19.h,
                  right: 10.h,
                ),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      "5",
                      style: theme.textTheme.labelLarge,
                    ),
                    Text(
                      "6",
                      style: theme.textTheme.labelLarge,
                    ),
                    Text(
                      "7",
                      style: theme.textTheme.labelLarge,
                    ),
                    Text(
                      "8",
                      style: theme.textTheme.labelLarge,
                    ),
                    Text(
                      "9",
                      style: theme.textTheme.labelLarge,
                    ),
                    Text(
                      "10",
                      style: theme.textTheme.labelLarge,
                    ),
                  ],
                ),
              ),
            ),
            SizedBox(height: 18.v),
            Padding(
              padding: EdgeInsets.only(
                left: 2.h,
                right: 44.h,
              ),
              child: Row(
                children: [
                  Text(
                    "12",
                    style: theme.textTheme.labelLarge,
                  ),
                  Spacer(
                    flex: 25,
                  ),
                  Text(
                    "13",
                    style: theme.textTheme.labelLarge,
                  ),
                  Spacer(
                    flex: 25,
                  ),
                  Text(
                    "14",
                    style: theme.textTheme.labelLarge,
                  ),
                  Spacer(
                    flex: 25,
                  ),
                  Text(
                    "15",
                    style: theme.textTheme.labelLarge,
                  ),
                  Spacer(
                    flex: 25,
                  ),
                  Text(
                    "16",
                    style: theme.textTheme.labelLarge,
                  ),
                ],
              ),
            ),
            SizedBox(height: 18.v),
            Padding(
              padding: EdgeInsets.only(right: 43.h),
              child: Row(
                children: [
                  Text(
                    "19",
                    style: theme.textTheme.labelLarge,
                  ),
                  Spacer(
                    flex: 25,
                  ),
                  Text(
                    "20",
                    style: theme.textTheme.labelLarge,
                  ),
                  Spacer(
                    flex: 25,
                  ),
                  Text(
                    "21",
                    style: theme.textTheme.labelLarge,
                  ),
                  Spacer(
                    flex: 25,
                  ),
                  Text(
                    "22",
                    style: theme.textTheme.labelLarge,
                  ),
                  Spacer(
                    flex: 25,
                  ),
                  Text(
                    "23",
                    style: theme.textTheme.labelLarge,
                  ),
                ],
              ),
            ),
            SizedBox(height: 15.v),
            Padding(
              padding: EdgeInsets.only(
                left: 7.h,
                right: 34.h,
              ),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Padding(
                    padding: EdgeInsets.only(
                      top: 3.v,
                      bottom: 4.v,
                    ),
                    child: Text(
                      "26",
                      style: theme.textTheme.labelLarge,
                    ),
                  ),
                  Padding(
                    padding: EdgeInsets.only(
                      top: 3.v,
                      bottom: 4.v,
                    ),
                    child: Text(
                      "27",
                      style: theme.textTheme.labelLarge,
                    ),
                  ),
                  Padding(
                    padding: EdgeInsets.only(
                      top: 3.v,
                      bottom: 4.v,
                    ),
                    child: Text(
                      "28",
                      style: theme.textTheme.labelLarge,
                    ),
                  ),
                  SizedBox(
                    height: 23.adaptSize,
                    width: 23.adaptSize,
                    child: Stack(
                      alignment: Alignment.topCenter,
                      children: [
                        Align(
                          alignment: Alignment.center,
                          child: Container(
                            height: 23.adaptSize,
                            width: 23.adaptSize,
                            decoration: BoxDecoration(
                              color: appTheme.red100,
                              borderRadius: BorderRadius.circular(
                                11.h,
                              ),
                            ),
                          ),
                        ),
                        Align(
                          alignment: Alignment.topCenter,
                          child: Padding(
                            padding: EdgeInsets.only(top: 3.v),
                            child: Text(
                              "29",
                              style: theme.textTheme.labelLarge,
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                  Padding(
                    padding: EdgeInsets.only(
                      top: 3.v,
                      bottom: 4.v,
                    ),
                    child: Text(
                      "30",
                      style: theme.textTheme.labelLarge,
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }

  /// Section Widget
  Widget _buildNinetyNineSection(BuildContext context) {
    return SizedBox(
      height: 292.v,
      width: 368.h,
      child: Stack(
        alignment: Alignment.bottomCenter,
        children: [
          Align(
            alignment: Alignment.topCenter,
            child: SizedBox(
              height: 232.v,
              width: 368.h,
              child: CalendarDatePicker2(
                config: CalendarDatePicker2Config(
                  calendarType: CalendarDatePicker2Type.single,
                  firstDate: DateTime(DateTime.now().year - 5),
                  lastDate: DateTime(DateTime.now().year + 5),
                  firstDayOfWeek: 0,
                ),
                value: selectedDatesFromCalendar1,
                onValueChanged: (dates) {},
              ),
            ),
          ),
          Align(
            alignment: Alignment.bottomCenter,
            child: Padding(
              padding: EdgeInsets.only(
                left: 25.h,
                right: 22.h,
              ),
              child: Column(
                mainAxisSize: MainAxisSize.min,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  SizedBox(
                    height: 196.v,
                    width: 321.h,
                    child: Stack(
                      alignment: Alignment.centerRight,
                      children: [
                        Align(
                          alignment: Alignment.topRight,
                          child: Padding(
                            padding: EdgeInsets.only(right: 29.h),
                            child: Text(
                              "Bulan November",
                              style: CustomTextStyles.bodyMediumBlack90014,
                            ),
                          ),
                        ),
                        Align(
                          alignment: Alignment.centerRight,
                          child: Padding(
                            padding: EdgeInsets.only(left: 287.h),
                            child: Column(
                              mainAxisSize: MainAxisSize.min,
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Padding(
                                  padding: EdgeInsets.only(left: 9.h),
                                  child: Text(
                                    "4",
                                    style: theme.textTheme.labelLarge,
                                  ),
                                ),
                                SizedBox(height: 18.v),
                                Text(
                                  "11",
                                  style: theme.textTheme.labelLarge,
                                ),
                                SizedBox(height: 19.v),
                                Align(
                                  alignment: Alignment.centerRight,
                                  child: Padding(
                                    padding: EdgeInsets.only(right: 2.h),
                                    child: Text(
                                      "18",
                                      style: theme.textTheme.labelLarge,
                                    ),
                                  ),
                                ),
                                SizedBox(height: 19.v),
                                Align(
                                  alignment: Alignment.centerRight,
                                  child: Text(
                                    "25",
                                    style: theme.textTheme.labelLarge,
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ),
                        Align(
                          alignment: Alignment.bottomRight,
                          child: Padding(
                            padding: EdgeInsets.only(
                              right: 53.h,
                              bottom: 72.v,
                            ),
                            child: Text(
                              "17",
                              style: theme.textTheme.labelLarge,
                            ),
                          ),
                        ),
                        Align(
                          alignment: Alignment.bottomRight,
                          child: Padding(
                            padding: EdgeInsets.only(
                              right: 51.h,
                              bottom: 38.v,
                            ),
                            child: Text(
                              "24",
                              style: theme.textTheme.labelLarge,
                            ),
                          ),
                        ),
                        Align(
                          alignment: Alignment.bottomRight,
                          child: Padding(
                            padding: EdgeInsets.only(
                              right: 7.h,
                              bottom: 4.v,
                            ),
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.end,
                              mainAxisSize: MainAxisSize.min,
                              children: [
                                Text(
                                  "1",
                                  style: theme.textTheme.labelLarge,
                                ),
                                Padding(
                                  padding: EdgeInsets.only(left: 35.h),
                                  child: Text(
                                    "2",
                                    style: theme.textTheme.labelLarge,
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ),
                        _buildSeventyTwoSection(context),
                      ],
                    ),
                  ),
                  SizedBox(height: 28.v),
                  Padding(
                    padding: EdgeInsets.only(left: 11.h),
                    child: Row(
                      children: [
                        SizedBox(
                          height: 52.v,
                          child: VerticalDivider(
                            width: 4.h,
                            thickness: 4.v,
                            color: appTheme.red100,
                          ),
                        ),
                        Padding(
                          padding: EdgeInsets.only(
                            left: 11.h,
                            top: 6.v,
                            bottom: 4.v,
                          ),
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(
                                "29 November 2023",
                                style: CustomTextStyles.labelLargePoppins,
                              ),
                              SizedBox(height: 6.v),
                              SizedBox(
                                width: 158.h,
                                child: Row(
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceBetween,
                                  children: [
                                    Text(
                                      "IMUNISASI",
                                      style: CustomTextStyles.labelLargeRed100,
                                    ),
                                    Text(
                                      "minggu ke-4",
                                      style: CustomTextStyles.bodySmallLight,
                                    ),
                                  ],
                                ),
                              ),
                            ],
                          ),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }

  /// Section Widget
  Widget _buildSangatBaikSection(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(
        left: 38.h,
        right: 35.h,
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Padding(
            padding: EdgeInsets.only(top: 4.v),
            child: Column(
              children: [
                CustomImageView(
                  imagePath: ImageConstant.imgGroup1,
                  height: 108.adaptSize,
                  width: 108.adaptSize,
                  alignment: Alignment.centerRight,
                  margin: EdgeInsets.only(right: 3.h),
                ),
                SizedBox(height: 9.v),
                Text(
                  "Perkembangan Kalsyara",
                  style: theme.textTheme.bodySmall,
                ),
                CustomElevatedButton(
                  height: 21.v,
                  width: 97.h,
                  text: "SANGAT BAIK ",
                  buttonStyle: CustomButtonStyles.fillRedTL10,
                  buttonTextStyle: theme.textTheme.labelSmall!,
                ),
              ],
            ),
          ),
          Container(
            height: 122.v,
            width: 152.h,
            margin: EdgeInsets.only(bottom: 36.v),
            child: Stack(
              alignment: Alignment.topRight,
              children: [
                Align(
                  alignment: Alignment.topLeft,
                  child: Padding(
                    padding: EdgeInsets.only(right: 81.h),
                    child: Column(
                      mainAxisSize: MainAxisSize.min,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          "Nama :",
                          style: theme.textTheme.bodySmall,
                        ),
                        SizedBox(height: 4.v),
                        Text(
                          "Umur :",
                          style: theme.textTheme.bodySmall,
                        ),
                        SizedBox(height: 3.v),
                        Text(
                          "Berat Badan :",
                          style: theme.textTheme.bodySmall,
                        ),
                        SizedBox(height: 5.v),
                        Text(
                          "Tinggi Badan :",
                          style: theme.textTheme.bodySmall,
                        ),
                        SizedBox(height: 2.v),
                        Text(
                          "Imunisasi :",
                          style: theme.textTheme.bodySmall,
                        ),
                      ],
                    ),
                  ),
                ),
                Align(
                  alignment: Alignment.topRight,
                  child: Padding(
                    padding: EdgeInsets.only(
                      top: 1.v,
                      right: 12.h,
                    ),
                    child: Text(
                      "Kalsyara Arta Yuana",
                      style: CustomTextStyles.bodySmallPink20001,
                    ),
                  ),
                ),
                Align(
                  alignment: Alignment.topLeft,
                  child: Padding(
                    padding: EdgeInsets.only(
                      left: 38.h,
                      top: 18.v,
                    ),
                    child: Text(
                      "4 tahun",
                      style: CustomTextStyles.bodySmallPink20001,
                    ),
                  ),
                ),
                Align(
                  alignment: Alignment.bottomRight,
                  child: Padding(
                    padding: EdgeInsets.only(left: 72.h),
                    child: Column(
                      mainAxisSize: MainAxisSize.min,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Padding(
                          padding: EdgeInsets.only(left: 3.h),
                          child: Text(
                            "15kg",
                            style: CustomTextStyles.bodySmallPink20001,
                          ),
                        ),
                        SizedBox(height: 2.v),
                        Padding(
                          padding: EdgeInsets.only(left: 7.h),
                          child: Text(
                            "100cm",
                            style: CustomTextStyles.bodySmallPink20001,
                          ),
                        ),
                        SizedBox(height: 5.v),
                        SizedBox(
                          width: 80.h,
                          child: Text(
                            "Campak Rubela \nDT             \nTBC               ",
                            maxLines: 3,
                            overflow: TextOverflow.ellipsis,
                            style: CustomTextStyles.bodySmallPink20001,
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
                CustomImageView(
                  imagePath: ImageConstant.imgNotification,
                  height: 39.v,
                  width: 10.h,
                  alignment: Alignment.bottomLeft,
                  margin: EdgeInsets.only(
                    left: 58.h,
                    bottom: 3.v,
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }

  /// Section Widget
  Widget _buildBottomBarSection(BuildContext context) {
    return CustomBottomBar(
      onChanged: (BottomBarEnum type) {},
    );
  }
}
