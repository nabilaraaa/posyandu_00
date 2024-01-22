import 'package:flutter/material.dart';
import '../core/app_export.dart';

/// A collection of pre-defined text styles for customizing text appearance,
/// categorized by different font families and weights.
/// Additionally, this class includes extensions on [TextStyle] to easily apply specific font families to text.

class CustomTextStyles {
  // Body text style
  static get bodyLargeBluegray400 => theme.textTheme.bodyLarge!.copyWith(
        color: appTheme.blueGray400,
        fontSize: 16.fSize,
      );
  static get bodyLargeBluegray40016 => theme.textTheme.bodyLarge!.copyWith(
        color: appTheme.blueGray400,
        fontSize: 16.fSize,
      );
  static get bodyMediumBlack900 => theme.textTheme.bodyMedium!.copyWith(
        color: appTheme.black900,
      );
  static get bodyMediumBlack90013 => theme.textTheme.bodyMedium!.copyWith(
        color: appTheme.black900,
        fontSize: 13.fSize,
      );
  static get bodyMediumBlack90014 => theme.textTheme.bodyMedium!.copyWith(
        color: appTheme.black900,
        fontSize: 14.fSize,
      );
  static get bodySmallLight => theme.textTheme.bodySmall!.copyWith(
        fontWeight: FontWeight.w300,
      );
  static get bodySmallPink20001 => theme.textTheme.bodySmall!.copyWith(
        color: appTheme.pink20001,
      );
  // Headline text style
  static get headlineMediumOnPrimary =>
      theme.textTheme.headlineMedium!.copyWith(
        color: theme.colorScheme.onPrimary,
      );
  static get headlineMediumffadddff => theme.textTheme.headlineMedium!.copyWith(
        color: Color(0XFFADDDFF),
      );
  static get headlineSmallBluegray900 =>
      theme.textTheme.headlineSmall!.copyWith(
        color: appTheme.blueGray900,
      );
  static get headlineSmallBluegray900Bold =>
      theme.textTheme.headlineSmall!.copyWith(
        color: appTheme.blueGray900,
        fontWeight: FontWeight.w700,
      );
  static get headlineSmallBold => theme.textTheme.headlineSmall!.copyWith(
        fontWeight: FontWeight.w700,
      );
  // Label style
  static get labelLargePoppins => theme.textTheme.labelLarge!.poppins;
  static get labelLargePoppinsPrimary =>
      theme.textTheme.labelLarge!.poppins.copyWith(
        color: theme.colorScheme.primary,
        fontSize: 13.fSize,
        fontWeight: FontWeight.w600,
      );
  static get labelLargeRed100 => theme.textTheme.labelLarge!.copyWith(
        color: appTheme.red100,
        fontWeight: FontWeight.w900,
      );
  // Title text style
  static get titleLargeOnPrimary => theme.textTheme.titleLarge!.copyWith(
        color: theme.colorScheme.onPrimary,
      );
  static get titleLargeOrange200 => theme.textTheme.titleLarge!.copyWith(
        color: appTheme.orange200,
        fontSize: 22.fSize,
      );
  static get titleLargePink20001 => theme.textTheme.titleLarge!.copyWith(
        color: appTheme.pink20001,
        fontSize: 22.fSize,
      );
  static get titleLargePoppinsBlack900 =>
      theme.textTheme.titleLarge!.poppins.copyWith(
        color: appTheme.black900,
        fontSize: 22.fSize,
        fontWeight: FontWeight.w400,
      );
  static get titleLargeffffc4df => theme.textTheme.titleLarge!.copyWith(
        color: Color(0XFFFFC4DF),
      );
  static get titleMediumBlack900 => theme.textTheme.titleMedium!.copyWith(
        color: appTheme.black900,
      );
  static get titleMediumLexendExaOnPrimary =>
      theme.textTheme.titleMedium!.lexendExa.copyWith(
        color: theme.colorScheme.onPrimary,
        fontWeight: FontWeight.w900,
      );
  static get titleMediumLexendExaffadddff =>
      theme.textTheme.titleMedium!.lexendExa.copyWith(
        color: Color(0XFFADDDFF),
        fontWeight: FontWeight.w900,
      );
  static get titleMediumLexendExaffffc4df =>
      theme.textTheme.titleMedium!.lexendExa.copyWith(
        color: Color(0XFFFFC4DF),
        fontWeight: FontWeight.w900,
      );
  static get titleMediumOnPrimary => theme.textTheme.titleMedium!.copyWith(
        color: theme.colorScheme.onPrimary,
        fontSize: 18.fSize,
      );
  static get titleMediumPrimary => theme.textTheme.titleMedium!.copyWith(
        color: theme.colorScheme.primary,
        fontSize: 18.fSize,
      );
}

extension on TextStyle {
  TextStyle get poppins {
    return copyWith(
      fontFamily: 'Poppins',
    );
  }

  TextStyle get lexendExa {
    return copyWith(
      fontFamily: 'Lexend Exa',
    );
  }
}
