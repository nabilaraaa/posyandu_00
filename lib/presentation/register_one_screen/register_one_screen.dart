import 'package:flutter/material.dart';
import 'package:posyandu/core/app_export.dart';
import 'package:posyandu/presentation/data_balita_one_screen/data_balita_one_screen.dart';
import 'package:posyandu/widgets/custom_elevated_button.dart';
import 'package:posyandu/widgets/custom_text_form_field.dart';

class RegisterOneScreen extends StatelessWidget {
  RegisterOneScreen({Key? key})
      : super(
          key: key,
        );

  TextEditingController registrationFormController = TextEditingController();

  TextEditingController nameInputController = TextEditingController();

  TextEditingController whatsappInputController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        resizeToAvoidBottomInset: false,
        body: Container(
          width: double.maxFinite,
          padding: EdgeInsets.symmetric(
            horizontal: 21.h,
            vertical: 51.v,
          ),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Padding(
                padding: EdgeInsets.only(left: 8.h),
                child: Text(
                  "DAFTAR",
                  style: theme.textTheme.headlineSmall,
                ),
              ),
              SizedBox(height: 32.v),
              CustomImageView(
                imagePath: ImageConstant.imgMother1,
                height: 103.adaptSize,
                width: 103.adaptSize,
                margin: EdgeInsets.only(left: 116.h),
              ),
              SizedBox(height: 2.v),
              Padding(
                padding: EdgeInsets.only(left: 100.h),
                child: RichText(
                  text: TextSpan(
                    children: [
                      TextSpan(
                        text: "POS",
                        style: CustomTextStyles.titleLargeffffc4df,
                      ),
                      TextSpan(
                        text: "YANDU",
                        style: theme.textTheme.titleLarge,
                      ),
                    ],
                  ),
                  textAlign: TextAlign.left,
                ),
              ),
              SizedBox(height: 44.v),
              Padding(
                padding: EdgeInsets.only(left: 8.h),
                child: Text(
                  "Nama Ibu",
                  style: theme.textTheme.bodyMedium,
                ),
              ),
              SizedBox(height: 1.v),
              _buildRegistrationForm(context),
              SizedBox(height: 11.v),
              Padding(
                padding: EdgeInsets.only(left: 8.h),
                child: Text(
                  "NIK Ibu",
                  style: theme.textTheme.bodyMedium,
                ),
              ),
              SizedBox(height: 1.v),
              _buildNameInput(context),
              SizedBox(height: 12.v),
              Padding(
                padding: EdgeInsets.only(left: 8.h),
                child: Text(
                  "No. WhatsApp",
                  style: theme.textTheme.bodyMedium,
                ),
              ),
              _buildWhatsappInput(context),
              SizedBox(height: 44.v),
              _buildNextButton(context),
              SizedBox(height: 5.v),
            ],
          ),
        ),
      ),
    );
  }

  /// Section Widget
  Widget _buildRegistrationForm(BuildContext context) {
    return CustomTextFormField(
      controller: registrationFormController,
    );
  }

  /// Section Widget
  Widget _buildNameInput(BuildContext context) {
    return CustomTextFormField(
      controller: nameInputController,
    );
  }

  /// Section Widget
  Widget _buildWhatsappInput(BuildContext context) {
    return CustomTextFormField(
      controller: whatsappInputController,
      textInputAction: TextInputAction.done,
    );
  }

  /// Section Widget
  Widget _buildNextButton(BuildContext context) {
    return CustomElevatedButton(
      text: "Selanjutnya",
      margin: EdgeInsets.only(left: 1.h),
      buttonStyle: CustomButtonStyles.fillIndigo,
      onPressed: () {
        Navigator.push(
          context,
          MaterialPageRoute(builder: (context) => DataBalitaOneScreen()),
        );
      },
    );
  }
}
