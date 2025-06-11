import 'package:app/src/common/theme/colors.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class CustomStyleButton {
  // Botón de texto
  static ButtonStyle textButtonTheme({
    bool isDark = false,
    EdgeInsets? padding,
    BorderRadius? borderRadius,
    Color? foregroundColor,
    Color? backgroundColor,
    Color? disabledColor,
    Color? hoverColor,
  }) {
    return TextButton.styleFrom(
      foregroundColor: foregroundColor ?? AppColors.primaryColor,
      backgroundColor: backgroundColor ?? Colors.transparent,
      disabledForegroundColor:
          disabledColor ?? (isDark ? Colors.grey[400] : Colors.grey[600]),
      splashFactory: InkRipple.splashFactory,
      padding:
          padding ?? const EdgeInsets.symmetric(vertical: 10, horizontal: 2),
      shape: RoundedRectangleBorder(
        borderRadius: borderRadius ?? BorderRadius.circular(10),
      ),
      elevation: 0,
      textStyle: GoogleFonts.poppins(fontWeight: FontWeight.w500, fontSize: 14),
      // overlayColor: WidgetStateProperty.resolveWith<Color?>(
      //   (Set<WidgetState> states) {
      //     if (states.contains(WidgetState.hovered)) {
      //       return hoverColor ?? AppColors.primaryColor.withOpacity(0.1);
      //     }
      //     return null;
      //   },
      // ),
    );
  }

  // Botón con borde
  static ButtonStyle outlinedButtonTheme({
    bool isDark = false,
    EdgeInsets? padding,
    BorderRadius? borderRadius,
    Color? foregroundColor,
    Color? backgroundColor,
    Color? borderColor,
    Color? disabledColor,
    Color? hoverColor,
  }) {
    return OutlinedButton.styleFrom(
      foregroundColor: foregroundColor ?? AppColors.primaryColor,
      backgroundColor: backgroundColor ?? Colors.transparent,
      disabledForegroundColor:
          disabledColor ?? (isDark ? Colors.grey[400] : Colors.grey[600]),
      disabledBackgroundColor: isDark ? Colors.grey[800] : Colors.grey[200],
      splashFactory: InkRipple.splashFactory,
      padding:
          padding ?? const EdgeInsets.symmetric(vertical: 15, horizontal: 20),
      shape: RoundedRectangleBorder(
        borderRadius: borderRadius ?? BorderRadius.circular(10),
        side: BorderSide(color: borderColor ?? AppColors.primaryColor),
      ),
      elevation: 0,
      textStyle: GoogleFonts.poppins(fontWeight: FontWeight.w500, fontSize: 14),
      // overlayColor: WidgetStateProperty.resolveWith<Color?>(
      //   (Set<WidgetState> states) {
      //     if (states.contains(WidgetState.hovered)) {
      //       return hoverColor ?? AppColors.primaryColor.withOpacity(0.15);
      //     }
      //     return null;
      //   },
      // ),
    );
  }

  // Botón elevado
  static ButtonStyle elevatedButtonTheme({
    bool isDark = false,
    EdgeInsets? padding,
    BorderRadius? borderRadius,
    Color? foregroundColor,
    Color? backgroundColor,
    Color? disabledColor,
    Color? hoverColor,
    double? elevation,
  }) {
    return ElevatedButton.styleFrom(
      foregroundColor: foregroundColor ?? Colors.white,
      backgroundColor: backgroundColor ?? AppColors.primaryColor,
      disabledForegroundColor:
          disabledColor ?? (isDark ? Colors.grey[400] : Colors.grey[600]),
      disabledBackgroundColor: isDark ? Colors.grey[800] : Colors.grey[200],
      splashFactory: InkRipple.splashFactory,
      padding:
          padding ?? const EdgeInsets.symmetric(vertical: 15, horizontal: 20),
      shape: RoundedRectangleBorder(
        borderRadius: borderRadius ?? BorderRadius.circular(10),
      ),
      elevation: elevation ?? 5,
      textStyle: GoogleFonts.poppins(fontWeight: FontWeight.w500, fontSize: 14),
      shadowColor: isDark ? Colors.black : Colors.grey.withOpacity(0.5),
      // overlayColor: WidgetStateProperty.resolveWith<Color?>(
      //   (Set<WidgetState> states) {
      //     if (states.contains(WidgetState.hovered)) {
      //       return hoverColor ?? Colors.white.withOpacity(0.2);
      //     }
      //     return null;
      //   },
      // ),
    );
  }

  // Botón de peligro (ej. eliminar)
  static ButtonStyle dangerButtonTheme({
    bool isDark = false,
    EdgeInsets? padding,
    BorderRadius? borderRadius,
  }) {
    return elevatedButtonTheme(
      isDark: isDark,
      backgroundColor: AppColors.red,
      foregroundColor: Colors.white,
      hoverColor: Colors.white.withOpacity(0.3),
      padding: padding,
      borderRadius: borderRadius,
    );
  }

  // Botón de éxito (ej. confirmar)
  static ButtonStyle successButtonTheme({
    bool isDark = false,
    EdgeInsets? padding,
    BorderRadius? borderRadius,
  }) {
    return elevatedButtonTheme(
      isDark: isDark,
      backgroundColor: AppColors.green,
      foregroundColor: Colors.white,
      hoverColor: Colors.white.withOpacity(0.3),
      padding: padding,
      borderRadius: borderRadius,
    );
  }

  // Versiones específicas para cada tema
  static ButtonStyle textButtonLightTheme() => textButtonTheme();
  static ButtonStyle textButtonDarkTheme() => textButtonTheme(isDark: true);

  static ButtonStyle outlinedButtonLightTheme() => outlinedButtonTheme();
  static ButtonStyle outlinedButtonDarkTheme() =>
      outlinedButtonTheme(isDark: true);

  static ButtonStyle elevatedButtonLightTheme() => elevatedButtonTheme();
  static ButtonStyle elevatedButtonDarkTheme() =>
      elevatedButtonTheme(isDark: true);

  static ButtonStyle dangerButtonLightTheme() => dangerButtonTheme();
  static ButtonStyle dangerButtonDarkTheme() => dangerButtonTheme(isDark: true);

  static ButtonStyle successButtonLightTheme() => successButtonTheme();
  static ButtonStyle successButtonDarkTheme() =>
      successButtonTheme(isDark: true);
}
