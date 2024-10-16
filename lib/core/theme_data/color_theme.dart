import 'package:flutter/material.dart';

const Color background = Color(0xFF302e7c); // blue
const Color surfaceSubtitle = Color(0xFFE0E0E0);
const Color surfaceDefault = Color(0xFFd12788); // button color
const Color surfaceDisabled = Color(0xFFf3f3ff); // grey30
const Color surfaceDarker = Color(0xFF374151); // grey80

const Color borderDefault = Color(0xFFD1D5DB); // grey40
const Color borderDisabled = Color(0xFFE5E7EB); // grey30
const Color borderDarker = Color(0xFF4B5563); // grey60

const Color textHeading = Color(0xFFFFFFFF); // purple100
const Color textTitle = Color(0xFF8A226F); // purple100
const Color textBody = Color(0xFF000000); // black100
const Color textSubtitle = Color(0xFF4455C0); // blue100
const Color textCaption = Color(0xFF2340FF); // darkblue

//Primary
const Color primarySubtitle = Color(0xFFFFF3F1); // Brand Primary lightest
const Color primaryLighter = Color(0xFFFFA299); // Brand Primary lighter
const Color primaryDefault = Color(0xFFEB5757); // Brand Primary
const Color primaryDarker = Color(0xFFC53030); // Brand Primary darker

const Color borderColor = Color(0xFFEFEFEF);
const Color primaryBorderSubtitle = Color(0xFFFFF3F1); // Matches primarySubtitle
const Color primaryBorderLighter = Color(0xFFFFA299); // Matches primaryLighter
const Color primaryBorderDefault = Color(0xFFEB5757); // Matches primaryDefault
const Color primaryBorderDarker = Color(0xFFC53030); // Matches primaryDarker

const Color primaryTextLabel = Color(0xFFEB5757); // Matches primaryDefault

//Secondary
const Color secondarySubtitle = Color(0xFFEDEEF9); // Activity Primary lighter
const Color secondaryLighter = Color(0xFFD4D8F7); // Electric Blue lighter
const Color secondaryDefault = Color(0xFF4B77E3); // Electric Blue
const Color secondaryDarker = Color(0xFF3B4FB2); // Electric Blue darker

const Color secondaryTextLabel = Color(0xFF4B77E3); // Matches secondaryDefault

//Error
const Color errorSubtitle = Color(0xFFFEE2E2); // Error Background Fill lighter
const Color errorLighter = Color(0xFFFCA5A5); // Error lighter
const Color errorDefault = Color(0xFFEF4444); // Error Default
const Color errorDarker = Color(0xFFB91C1C); // Error Darker

const Color errorBorderSubtitle = Color(0xFFFEE2E2); // Matches errorSubtitle
const Color errorBorderLighter = Color(0xFFFCA5A5); // Matches errorLighter
const Color errorBorderDefault = Color(0xFFEF4444); // Matches errorDefault
const Color errorBorderDarker = Color(0xFFB91C1C); // Matches errorDarker

const Color errorTextLabel = Color(0xFFB91C1C); // Matches errorDarker

//Success
const Color successSubtitle = Color(0xFFDCFCE7); // Success Background Fill
const Color successLighter = Color(0xFF6EE7B7); // Success lighter
const Color successDefault = Color(0xFF22C55E); // Success Default
const Color successDarker = Color(0xFF15803D); // Success Darker

const Color successBorderSubtitle =
    Color(0xFFDCFCE7); // Matches successSubtitle
const Color successBorderLighter = Color(0xFF6EE7B7); // Matches successLighter
const Color successBorderDefault = Color(0xFF22C55E); // Matches successDefault
const Color successBorderDarker = Color(0xFF15803D); // Matches successDarker

const Color infoTextLabel =
    Color(0xFF3B82F6); // Matches Electric Blue (Information)
const Color successTextLabel = Color(0xFF15803D); // Matches successDarker

//Warning
const Color warningSubtitle = Color(0xFFFFF7ED); // Warning Background Fill
const Color warningLighter = Color(0xFFFABF85); // Warning lighter
const Color warningDefault = Color(0xFFF97316); // Warning Default
const Color warningDarker = Color(0xFFB45309); // Warning Darker

const Color warningBorderSubtitle =
    Color(0xFFFFF7ED); // Matches warningSubtitle
const Color warningBorderLighter = Color(0xFFFABF85); // Matches warningLighter
const Color warningBorderDefault = Color(0xFFF97316); // Matches warningDefault
const Color warningBorderDarker = Color(0xFFB45309); // Matches warningDarker

const Color warningTextLabel = Color(0xFFB45309); // Matches warningDarker

//Alert
const Color alertSubtitle = Color(0xFFFFFBEB); // Alert Background Fill
const Color alertLighter = Color(0xFFFCD34D); // Alert lighter
const Color alertDefault = Color(0xFFEAB308); // Alert Default
const Color alertDarker = Color(0xFFB45309); // Alert Darker

const Color alertBorderSubtitle = Color(0xFFFFFBEB); // Matches alertSubtitle
const Color alertBorderLighter = Color(0xFFFCD34D); // Matches alertLighter
const Color alertBorderDefault = Color(0xFFEAB308); // Matches alertDefault
const Color alertBorderDarker = Color(0xFFB45309); // Matches alertDarker

const Color alertTextLabel = Color(0xFFEAB308); // Matches alertDefault

const Color textNegative = Color(0xFFFFFFFF); // White
const Color textSmall = Color(0xFF000080); // Navy
const Color textCaption2 = Color(0xFF49516F); // Grey caption

// Dark theme data
const ColorScheme darkColorScheme = ColorScheme(
  brightness: Brightness.dark,
  primary: primaryDarker,
  onPrimary: Colors.white,
  secondary: secondaryDarker,
  onSecondary: Colors.white,
  error: errorDarker,
  onError: Colors.white,
  surface: surfaceDarker,
  onSurface: Colors.white,
  onTertiary: Colors.white,
  primaryContainer: primaryDarker,
  secondaryContainer: secondaryDarker,
  tertiary: primaryLighter,
  onTertiaryContainer: primaryLighter,
  surfaceTint: Colors.black,
);

// Light theme data
const ColorScheme lightColorScheme = ColorScheme(
  brightness: Brightness.light,
  primary: primaryDefault,
  onPrimary: Colors.white,
  secondary: secondaryDefault,
  onSecondary: primaryTextLabel,
  error: errorDefault,
  onError: Colors.white,
  surface: surfaceDefault,
  onSurface: textTitle,
  onTertiary: Colors.white,
  primaryContainer: primaryLighter,
  secondaryContainer: secondaryLighter,
  tertiary: primaryLighter,
  onTertiaryContainer: primaryLighter,
  surfaceTint: primaryDefault,
);
