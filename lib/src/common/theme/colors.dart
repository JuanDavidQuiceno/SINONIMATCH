import 'package:flutter/material.dart';

@immutable
class AppColorsExtension extends ThemeExtension<AppColorsExtension> {
  const AppColorsExtension({
    required this.background,
    required this.hintColor,
    required this.backgroundIconColor,
    required this.alertColor,
    required this.transparent,
    required this.onSurface,
    required this.card,
  });

  final Color background;
  final Color hintColor;
  final Color backgroundIconColor;
  final Color alertColor;
  final Color transparent;
  final Color onSurface;
  final Color card;

  static const AppColorsExtension light = AppColorsExtension(
    background: Color(0xFFFFFFFF),
    hintColor: Color(0xFF9E9E9E), // Más claro, mejor contraste
    backgroundIconColor: Color(0xFFEDE7F6), // Lila suave y visible
    alertColor: Color(0xFFFFF9C4), // Amarillo claro para alertas
    transparent: Colors.transparent,
    onSurface: Color(0xFF000000),
    card: Color(0xFFF5F5F5), // Gris claro, más neutro
  );

  // Dark mode mejorado
  static const AppColorsExtension dark = AppColorsExtension(
    background: Color(0xFF212332),
    hintColor: Color(0xFFB0BEC5), // Azul-gris claro, bien legible
    backgroundIconColor: Color(0xFF1E1E1E),
    alertColor: Color(0xFF424242), // Gris oscuro visible, no negro absoluto
    transparent: Colors.transparent,
    onSurface: Color(0xFFFFFFFF),
    card: Color(0xFF2A2D3E),
  );

  @override
  ThemeExtension<AppColorsExtension> copyWith() => this;

  @override
  ThemeExtension<AppColorsExtension> lerp(
    ThemeExtension<AppColorsExtension>? other,
    double t,
  ) => this;
}

class AppColors {
  AppColors._();

  static const primaryColor = Color(0xFF2697FF); // Azul brillante
  static const red = Color(0xFFD70926); // Rojo intenso
  static const white = Color(0xFFFFFFFF);
  static const black = Color(0xFF000000);
  static const grey = Color(0xFFC4C4C4);
  static const lightGrey = Color(
    0xFFE0E0E0,
  ); // NUEVO: útil para bordes/dividers
  static const darkGrey = Color(0xFF757575); // NUEVO: útil para texto oscuro
  static const green = Color(0xFF4CAF50); // NUEVO: verde éxito accesible
  static const orange = Color(0xFFFFA500);
  static const transparent = Colors.transparent;

  // Consolidado: usar los colores nombrados según intención
  static const success = green;
  static const warning = Color(0xFFFFC107); // Amarillo estándar Material
  static const error = red;
  static const pending = Color(0xFFFF9800);
  static const inactived = grey;
}
