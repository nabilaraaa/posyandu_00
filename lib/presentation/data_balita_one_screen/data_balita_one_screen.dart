import 'package:flutter/material.dart';
import 'package:posyandu/core/app_export.dart';
import 'package:posyandu/presentation/home_screen/home_screen.dart';
import 'package:posyandu/widgets/custom_drop_down.dart';
import 'package:posyandu/widgets/custom_elevated_button.dart';
import 'package:posyandu/widgets/custom_radio_button.dart';
import 'package:posyandu/widgets/custom_text_form_field.dart';

class DataBalitaOneScreen extends StatelessWidget {
  DataBalitaOneScreen({Key? key})
      : super(
          key: key,
        );

  TextEditingController editTextController = TextEditingController();

  List<String> dropdownItemList = [
    "Item One",
    "Item Two",
    "Item Three",
  ];

  String jenisKelaminBalitaRadioGroup = "";

  List<String> radioList = ["lbl_perempuan", "lbl_laki_laki"];

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        resizeToAvoidBottomInset: false,
        body: Container(
          width: double.maxFinite,
          padding: EdgeInsets.symmetric(
            horizontal: 22.h,
            vertical: 49.v,
          ),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Padding(
                padding: EdgeInsets.only(left: 8.h),
                child: Text(
                  "DATA BALITA",
                  style: CustomTextStyles.headlineSmallBold,
                ),
              ),
              SizedBox(height: 29.v),
              Text(
                "Nama Balita",
                style: theme.textTheme.bodyMedium,
              ),
              SizedBox(height: 8.v),
              CustomTextFormField(
                controller: editTextController,
                textInputAction: TextInputAction.done,
              ),
              SizedBox(height: 30.v),
              Text(
                "Tanggal Lahir Balita",
                style: theme.textTheme.bodyMedium,
              ),
              SizedBox(height: 17.v),
              CustomDropDown(
                width: 150.h,
                icon: Container(
                  margin: EdgeInsets.symmetric(
                    horizontal: 15.h,
                    vertical: 18.v,
                  ),
                  child: CustomImageView(
                    imagePath: ImageConstant.imgLightbulb,
                    height: 12.v,
                    width: 18.h,
                  ),
                ),
                items: dropdownItemList,
                onChanged: (value) {},
              ),
              SizedBox(height: 28.v),
              Text(
                "Jenis Kelamin Balita",
                style: theme.textTheme.bodyMedium,
              ),
              SizedBox(height: 17.v),
              _buildJenisKelaminBalitaRadioGroup(context),
              SizedBox(height: 26.v),
              Text(
                "Usia Balita",
                style: theme.textTheme.bodyMedium,
              ),
              SizedBox(height: 8.v),
              Container(
                height: 58.v,
                width: 60.h,
                decoration: BoxDecoration(
                  color: appTheme.red5001.withOpacity(0.65),
                  borderRadius: BorderRadius.circular(
                    15.h,
                  ),
                ),
              ),
              SizedBox(height: 73.v),
              CustomElevatedButton(
                text: "Selanjutnya",
                buttonStyle: CustomButtonStyles.fillIndigo,
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                        builder: (context) => HomeScreen()),
                  );
                },
              ),
              SizedBox(height: 5.v),
            ],
          ),
        ),
      ),
    );
  }

  /// Section Widget
  Widget _buildJenisKelaminBalitaRadioGroup(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(
        left: 4.h,
        right: 90.h,
      ),
      child: Column(
        children: [
          Padding(
            padding: EdgeInsets.only(
              top: 2.v,
              right: 128.h,
            ),
            child: CustomRadioButton(
              text: "Perempuan",
              value: radioList[0],
              groupValue: jenisKelaminBalitaRadioGroup,
              onChange: (value) {
                jenisKelaminBalitaRadioGroup = value;
              },
            ),
          ),
          Padding(
            padding: EdgeInsets.only(
              left: 158.h,
              bottom: 2.v,
            ),
            child: CustomRadioButton(
              text: "Laki-laki",
              value: radioList[1],
              groupValue: jenisKelaminBalitaRadioGroup,
              onChange: (value) {
                jenisKelaminBalitaRadioGroup = value;
              },
            ),
          ),
        ],
      ),
    );
  }
}
