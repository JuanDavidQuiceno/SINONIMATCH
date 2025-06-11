import 'package:app/src/common/services/local_storage.dart';
import 'package:app/src/common/services/observer_bloc.dart';
import 'package:app/src/common/theme/theme.dart';
import 'package:app/src/feature/splash/splash_screen.dart';
import 'package:easy_dynamic_theme/easy_dynamic_theme.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_localizations/flutter_localizations.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  Bloc.observer = ObserverBloc();
  // / inicializar preferencias
  await LocalStorage.configurePrefs();
  runApp(EasyDynamicThemeWidget(child: const MyApp()));
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'SinoniMatch',
      // initialRoute: SplashScreen.routeName,
      home: const SplashScreen(),
      // themeMode: ThemeMode.system,
      theme: AppThemes.light,
      darkTheme: AppThemes.dark,
      themeMode: EasyDynamicTheme.of(context).themeMode,
      builder: (_, child) {
        return MediaQuery(
          data: MediaQuery.of(
            context,
          ).copyWith(textScaler: TextScaler.noScaling),
          child: child!,
        );
      },
      localizationsDelegates: const [
        GlobalMaterialLocalizations.delegate,
        GlobalCupertinoLocalizations.delegate,
        GlobalWidgetsLocalizations.delegate,
      ],
    );
  }
}
