import 'dart:async';
import 'package:flutter/material.dart';
import 'package:google_maps_flutter/google_maps_flutter.dart';
import 'package:posyandu/core/app_export.dart';
import 'package:posyandu/widgets/app_bar/appbar_subtitle.dart';
import 'package:posyandu/widgets/app_bar/custom_app_bar.dart';
import 'package:posyandu/widgets/custom_bottom_bar.dart';

class DataAnakScreen extends StatelessWidget {
  DataAnakScreen({Key? key})
      : super(
          key: key,
        );

  Completer<GoogleMapController> googleMapController = Completer();

  GlobalKey<NavigatorState> navigatorKey = GlobalKey();

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: _buildAppBar(context),
        body: Container(
          width: double.maxFinite,
          padding: EdgeInsets.symmetric(horizontal: 24.h),
          child: Column(
            children: [
              _buildDataAnakRow(context),
              SizedBox(height: 31.v),
              Text(
                "Data Pertumbuhan Anak",
                style: CustomTextStyles.titleLargePoppinsBlack900,
              ),
              SizedBox(height: 13.v),
              _buildMap(context),
              SizedBox(height: 5.v),
            ],
          ),
        ),
        bottomNavigationBar: _buildBottomBar(context),
      ),
    );
  }

  /// Section Widget
  PreferredSizeWidget _buildAppBar(BuildContext context) {
    return CustomAppBar(
      centerTitle: true,
      title: AppbarSubtitle(
        text: "Biodata Anak",
      ),
    );
  }

  /// Section Widget
  Widget _buildDataAnakRow(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(
        left: 4.h,
        right: 2.h,
      ),
      padding: EdgeInsets.all(14.h),
      decoration: AppDecoration.fillBlue.copyWith(
        borderRadius: BorderRadiusStyle.roundedBorder8,
      ),
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.start,
        mainAxisSize: MainAxisSize.max,
        children: [
          CustomImageView(
            imagePath: ImageConstant.imgImage90x90,
            height: 90.adaptSize,
            width: 90.adaptSize,
            radius: BorderRadius.circular(
              45.h,
            ),
            margin: EdgeInsets.only(bottom: 36.v),
          ),
          Container(
            height: 121.v,
            width: 147.h,
            margin: EdgeInsets.only(
              left: 22.h,
              bottom: 4.v,
            ),
            child: Stack(
              alignment: Alignment.bottomRight,
              children: [
                Align(
                  alignment: Alignment.topLeft,
                  child: SizedBox(
                    height: 90.v,
                    width: 140.h,
                    child: Stack(
                      alignment: Alignment.topRight,
                      children: [
                        Align(
                          alignment: Alignment.centerLeft,
                          child: Padding(
                            padding: EdgeInsets.only(right: 69.h),
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
                            padding: EdgeInsets.only(top: 1.v),
                            child: Text(
                              "Kalsyara Arta Yuana",
                              style: theme.textTheme.bodySmall,
                            ),
                          ),
                        ),
                        Align(
                          alignment: Alignment.topLeft,
                          child: Padding(
                            padding: EdgeInsets.only(
                              left: 35.h,
                              top: 18.v,
                            ),
                            child: Text(
                              "4 tahun",
                              style: theme.textTheme.bodySmall,
                            ),
                          ),
                        ),
                        Align(
                          alignment: Alignment.centerRight,
                          child: Padding(
                            padding: EdgeInsets.only(right: 48.h),
                            child: Text(
                              "15kg",
                              style: theme.textTheme.bodySmall,
                            ),
                          ),
                        ),
                        Align(
                          alignment: Alignment.bottomRight,
                          child: Padding(
                            padding: EdgeInsets.only(
                              right: 33.h,
                              bottom: 18.v,
                            ),
                            child: Text(
                              "100cm",
                              style: theme.textTheme.bodySmall,
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
                Align(
                  alignment: Alignment.bottomRight,
                  child: SizedBox(
                    width: 90.h,
                    child: Text(
                      "Campak Rubela \nDT             \nTBC               ",
                      maxLines: 3,
                      overflow: TextOverflow.ellipsis,
                      style: theme.textTheme.bodySmall,
                    ),
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
  Widget _buildMap(BuildContext context) {
    return SizedBox(
      height: 238.v,
      width: 339.h,
      child: GoogleMap(
        //TODO: Add your Google Maps API key in AndroidManifest.xml and pod file
        mapType: MapType.normal,
        initialCameraPosition: CameraPosition(
          target: LatLng(
            37.43296265331129,
            -122.08832357078792,
          ),
          zoom: 14.4746,
        ),
        onMapCreated: (GoogleMapController controller) {
          googleMapController.complete(controller);
        },
        zoomControlsEnabled: false,
        zoomGesturesEnabled: false,
        myLocationButtonEnabled: false,
        myLocationEnabled: false,
      ),
    );
  }

  /// Section Widget
  Widget _buildBottomBar(BuildContext context) {
    return CustomBottomBar(
      onChanged: (BottomBarEnum type) {},
    );
  }
}
