import 'package:flutter/material.dart';
import '../core/app_export.dart';

/// A collection of pre-defined text styles for customizing text appearance,
/// categorized by different font families and weights.
/// Additionally, this class includes extensions on [TextStyle] to easily apply specific font families to text.

class CustomTextStyles {
  // Body text style
  static get bodyLargeGray10001 => theme.textTheme.bodyLarge!.copyWith(
        color: appTheme.gray10001,
        fontSize: 18.fSize,
      );
  static get bodyLargeGray60003 => theme.textTheme.bodyLarge!.copyWith(
        color: appTheme.gray60003,
        fontSize: 18.fSize,
      );
  static get bodyLargeGray90003 => theme.textTheme.bodyLarge!.copyWith(
        color: appTheme.gray90003,
        fontSize: 18.fSize,
      );
  static get bodyLargePrimary => theme.textTheme.bodyLarge!.copyWith(
        color: theme.colorScheme.primary.withOpacity(1),
        fontSize: 18.fSize,
      );
  static get bodyLargeRoboto => theme.textTheme.bodyLarge!.roboto.copyWith(
        fontSize: 18.fSize,
      );
  static get bodyMedium13 => theme.textTheme.bodyMedium!.copyWith(
        fontSize: 13.fSize,
      );
  static get bodyMedium15 => theme.textTheme.bodyMedium!.copyWith(
        fontSize: 15.fSize,
      );
  static get bodyMediumKameronPrimary =>
      theme.textTheme.bodyMedium!.kameron.copyWith(
        color: theme.colorScheme.primary.withOpacity(1),
        fontSize: 15.fSize,
      );
  static get bodySmall10 => theme.textTheme.bodySmall!.copyWith(
        fontSize: 10.fSize,
      );
  // Display text style
  static get displaySmallRoboto =>
      theme.textTheme.displaySmall!.roboto.copyWith(
        fontSize: 34.fSize,
      );
  static get displaySmallRoboto35 =>
      theme.textTheme.displaySmall!.roboto.copyWith(
        fontSize: 35.fSize,
      );
  static get displaySmallRoboto38 =>
      theme.textTheme.displaySmall!.roboto.copyWith(
        fontSize: 38.fSize,
      );
  static get displaySmallRoboto39 =>
      theme.textTheme.displaySmall!.roboto.copyWith(
        fontSize: 39.fSize,
      );
  // Headline text style
  static get headlineMediumGray20001 =>
      theme.textTheme.headlineMedium!.copyWith(
        color: appTheme.gray20001,
      );
  static get headlineMediumPrimary => theme.textTheme.headlineMedium!.copyWith(
        color: theme.colorScheme.primary.withOpacity(1),
      );
  static get headlineMediumPrimary_1 =>
      theme.textTheme.headlineMedium!.copyWith(
        color: theme.colorScheme.primary.withOpacity(1),
      );
  static get headlineSmallIrishGrover =>
      theme.textTheme.headlineSmall!.irishGrover;
  static get headlineSmallIrishGroverWhiteA700 =>
      theme.textTheme.headlineSmall!.irishGrover.copyWith(
        color: appTheme.whiteA700,
      );
  static get headlineSmallKameron =>
      theme.textTheme.headlineSmall!.kameron.copyWith(
        fontSize: 24.fSize,
      );
  static get headlineSmallKameronGray700 =>
      theme.textTheme.headlineSmall!.kameron.copyWith(
        color: appTheme.gray700,
      );
  static get headlineSmallKameronGray70001 =>
      theme.textTheme.headlineSmall!.kameron.copyWith(
        color: appTheme.gray70001,
      );
  // Title text style
  static get titleLarge20 => theme.textTheme.titleLarge!.copyWith(
        fontSize: 20.fSize,
      );
  static get titleLarge23 => theme.textTheme.titleLarge!.copyWith(
        fontSize: 23.fSize,
      );
  static get titleLargeCyan600 => theme.textTheme.titleLarge!.copyWith(
        color: appTheme.cyan600,
        fontSize: 20.fSize,
      );
  static get titleLargeGray60004 => theme.textTheme.titleLarge!.copyWith(
        color: appTheme.gray60004,
      );
  static get titleLargeIrishGrover =>
      theme.textTheme.titleLarge!.irishGrover.copyWith(
        fontSize: 20.fSize,
      );
  static get titleLargeKameron => theme.textTheme.titleLarge!.kameron.copyWith(
        fontSize: 20.fSize,
      );
  static get titleLargeKameronCyan400 =>
      theme.textTheme.titleLarge!.kameron.copyWith(
        color: appTheme.cyan400,
      );
  static get titleLargeKameronWhiteA70001 =>
      theme.textTheme.titleLarge!.kameron.copyWith(
        color: appTheme.whiteA70001,
      );
}

extension on TextStyle {
  TextStyle get kameron {
    return copyWith(
      fontFamily: 'Kameron',
    );
  }

  TextStyle get roboto {
    return copyWith(
      fontFamily: 'Roboto',
    );
  }

  TextStyle get irishGrover {
    return copyWith(
      fontFamily: 'Irish Grover',
    );
  }
}
