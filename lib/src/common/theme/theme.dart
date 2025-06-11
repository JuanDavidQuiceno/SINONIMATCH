import 'package:app/src/common/theme/buttoms/custom_style_buttons.dart';
import 'package:app/src/common/theme/colors.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class AppThemes {
  static final light = _buildLightTheme();
  static final dark = _buildDarkTheme();

  static ThemeData _buildLightTheme() {
    return ThemeData(
      brightness: Brightness.light,
      extensions: const <ThemeExtension<dynamic>>[AppColorsExtension.light],
      colorScheme: ColorScheme.light(
        primary: AppColors.primaryColor,
        secondary: AppColors.primaryColor,
        onSecondary: AppColors.white,
        onSurface: AppColorsExtension.light.onSurface,
        surface: AppColorsExtension.light.background,
        error: AppColors.red,
        onError: AppColors.red,
        primaryContainer: AppColors.inactived,
      ),
      scaffoldBackgroundColor: AppColorsExtension.light.background,
      cardTheme: _cardTheme(AppColorsExtension.light.card),
      listTileTheme: _listTileTheme(AppColorsExtension.light),
      iconTheme: _iconTheme(AppColorsExtension.light.onSurface),
      dialogTheme: _dialogTheme(AppColors.white),
      buttonTheme: _buttonTheme(),
      floatingActionButtonTheme: _floatingActionButtonThemeData(),
      elevatedButtonTheme: ElevatedButtonThemeData(
        style: CustomStyleButton.elevatedButtonTheme(),
      ),
      outlinedButtonTheme: OutlinedButtonThemeData(
        style: CustomStyleButton.outlinedButtonTheme(),
      ),
      textButtonTheme: TextButtonThemeData(
        style: CustomStyleButton.textButtonTheme(),
      ),
      appBarTheme: _appBarTheme(AppColorsExtension.light, AppColors.white),
      primaryTextTheme: _buildPrimaryTextTheme(
        AppColorsExtension.light.onSurface,
      ),
      textTheme: _buildTextTheme(AppColorsExtension.light.onSurface),
    );
  }

  static ThemeData _buildDarkTheme() {
    return ThemeData(
      brightness: Brightness.dark,
      extensions: const <ThemeExtension<dynamic>>[AppColorsExtension.dark],
      colorScheme: ColorScheme.dark(
        primary: AppColors.primaryColor,
        secondary: AppColors.primaryColor,
        onPrimary: AppColors.white,
        onSecondary: AppColors.white,
        onSurface: AppColorsExtension.dark.onSurface,
        surface: AppColorsExtension.dark.background,
        error: AppColors.red,
        onError: AppColors.red,
        primaryContainer: AppColors.inactived,
      ),
      scaffoldBackgroundColor: AppColorsExtension.dark.background,
      cardTheme: _cardTheme(AppColorsExtension.dark.card),
      dropdownMenuTheme: _dropdownMenuTheme(AppColorsExtension.dark),
      listTileTheme: _listTileTheme(AppColorsExtension.dark),
      iconTheme: _iconTheme(AppColorsExtension.dark.onSurface),
      dialogTheme: _dialogTheme(AppColorsExtension.dark.background),
      buttonTheme: _buttonTheme(),
      floatingActionButtonTheme: _floatingActionButtonThemeData(),
      elevatedButtonTheme: ElevatedButtonThemeData(
        style: CustomStyleButton.elevatedButtonTheme(isDark: true),
      ),
      outlinedButtonTheme: OutlinedButtonThemeData(
        style: CustomStyleButton.outlinedButtonTheme(isDark: true),
      ),
      textButtonTheme: TextButtonThemeData(
        style: CustomStyleButton.textButtonTheme(isDark: true),
      ),
      appBarTheme: _appBarTheme(
        AppColorsExtension.dark,
        AppColorsExtension.dark.background,
      ),
      primaryTextTheme: _buildPrimaryTextTheme(
        AppColorsExtension.dark.onSurface,
      ),
      textTheme: _buildTextTheme(AppColorsExtension.dark.onSurface),
    );
  }

  // Métodos auxiliares para construir componentes temáticos
  static CardTheme _cardTheme(Color color) => CardTheme(
    color: color,
    elevation: 5,
    margin: EdgeInsets.zero,
    shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(8)),
  );

  static DropdownMenuThemeData _dropdownMenuTheme(AppColorsExtension colors) =>
      DropdownMenuThemeData(
        inputDecorationTheme: InputDecorationTheme(
          filled: true,
          fillColor: Colors.red,
          border: OutlineInputBorder(
            borderRadius: BorderRadius.circular(8),
            borderSide: BorderSide.none,
          ),
          contentPadding: const EdgeInsets.symmetric(
            horizontal: 16,
            vertical: 12,
          ),
        ),
        menuStyle: MenuStyle(
          surfaceTintColor: WidgetStateProperty.all(Colors.red),
          backgroundColor: WidgetStateProperty.all(Colors.red),
          shape: WidgetStateProperty.all(
            RoundedRectangleBorder(borderRadius: BorderRadius.circular(8)),
          ),
        ),
      );

  static ListTileThemeData _listTileTheme(AppColorsExtension colors) =>
      ListTileThemeData(
        selectedTileColor: AppColors.primaryColor.withOpacity(0.1),
        iconColor: colors.backgroundIconColor,
        titleTextStyle: GoogleFonts.poppins(
          fontSize: 14,
          color: colors.onSurface,
          fontWeight: FontWeight.normal,
        ),
      );

  static IconThemeData _iconTheme(Color color) =>
      IconThemeData(color: color, size: 24);

  static DialogTheme _dialogTheme(Color backgroundColor) => DialogTheme(
    backgroundColor: backgroundColor,
    shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(16)),
  );

  static ButtonThemeData _buttonTheme() => ButtonThemeData(
    textTheme: ButtonTextTheme.primary,

    shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(50)),
  );

  static AppBarTheme _appBarTheme(
    AppColorsExtension colors,
    Color backgroundColor,
  ) => AppBarTheme(
    backgroundColor: backgroundColor,
    elevation: 10,
    centerTitle: false,
    titleSpacing: 0,
    iconTheme: IconThemeData(color: colors.onSurface, size: 24),
    titleTextStyle: GoogleFonts.poppins(
      color: colors.onSurface,
      fontSize: 14,
      fontWeight: FontWeight.w400,
    ),
  );

  static FloatingActionButtonThemeData _floatingActionButtonThemeData() {
    return FloatingActionButtonThemeData(
      backgroundColor: AppColors.primaryColor,
      foregroundColor: AppColors.white,
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(8)),
    );
  }

  static TextTheme _buildPrimaryTextTheme(Color onSurface) => TextTheme(
    titleLarge: GoogleFonts.rubik(
      fontSize: 34,
      color: onSurface,
      fontWeight: FontWeight.w800,
    ),
    titleMedium: GoogleFonts.poppins(
      fontSize: 24,
      color: onSurface,
      fontWeight: FontWeight.w700,
    ),
    titleSmall: GoogleFonts.rubik(
      fontSize: 20,
      color: onSurface,
      fontWeight: FontWeight.w600,
    ),
    displayLarge: GoogleFonts.poppins(
      fontSize: 18,
      color: onSurface,
      fontWeight: FontWeight.w600,
    ),
    displayMedium: GoogleFonts.poppins(
      fontSize: 16,
      color: onSurface,
      fontWeight: FontWeight.w500,
    ),
    displaySmall: GoogleFonts.poppins(
      fontSize: 14,
      color: onSurface,
      fontWeight: FontWeight.w400,
    ),
    bodyLarge: GoogleFonts.poppins(
      fontSize: 18,
      color: onSurface,
      fontWeight: FontWeight.w600,
    ),
    bodyMedium: GoogleFonts.poppins(
      fontSize: 16,
      color: onSurface,
      fontWeight: FontWeight.w500,
    ),
    bodySmall: GoogleFonts.poppins(
      fontSize: 14,
      color: onSurface,
      fontWeight: FontWeight.w400,
    ),
  );

  static TextTheme _buildTextTheme(Color onSurface) => TextTheme(
    titleLarge: GoogleFonts.rubik(
      fontSize: 24,
      color: onSurface,
      fontWeight: FontWeight.w700,
    ),
    titleMedium: GoogleFonts.poppins(
      fontSize: 18,
      color: onSurface,
      fontWeight: FontWeight.w500,
    ),
    titleSmall: GoogleFonts.rubik(
      fontSize: 16,
      color: onSurface,
      fontWeight: FontWeight.w500,
    ),
    displayLarge: GoogleFonts.poppins(
      fontSize: 16,
      color: onSurface,
      fontWeight: FontWeight.w400,
    ),
    displayMedium: GoogleFonts.poppins(
      fontSize: 14,
      color: onSurface,
      fontWeight: FontWeight.w400,
    ),
    displaySmall: GoogleFonts.poppins(
      fontSize: 12,
      color: onSurface,
      fontWeight: FontWeight.w400,
    ),
    bodyLarge: GoogleFonts.poppins(
      fontSize: 16,
      color: onSurface,
      fontWeight: FontWeight.w400,
    ),
    bodyMedium: GoogleFonts.poppins(
      fontSize: 14,
      color: onSurface,
      fontWeight: FontWeight.w400,
    ),
    bodySmall: GoogleFonts.poppins(
      fontSize: 12,
      color: onSurface,
      fontWeight: FontWeight.w400,
    ),
  );
}
