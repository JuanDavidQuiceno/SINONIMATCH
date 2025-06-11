import 'package:easy_dynamic_theme/easy_dynamic_theme.dart';
import 'package:flutter/material.dart';

class CustomChangetheme extends StatelessWidget {
  const CustomChangetheme({super.key});

  @override
  Widget build(BuildContext context) {
    return IconButton(
      icon: Icon(
        EasyDynamicTheme.of(context).themeMode == ThemeMode.dark
            ? Icons
                .light_mode // Icono para tema claro
            : Icons.dark_mode, // Icono para tema oscuro
      ),
      onPressed: () {
        // Obtener el modo de tema actual
        final currentMode = EasyDynamicTheme.of(context).themeMode;

        // Cambiar al tema opuesto (sin considerar system)
        if (currentMode == ThemeMode.dark) {
          EasyDynamicTheme.of(context).changeTheme(dynamic: false, dark: false);
        } else {
          EasyDynamicTheme.of(context).changeTheme(dynamic: false, dark: true);
        }
      },
    );
  }
}
