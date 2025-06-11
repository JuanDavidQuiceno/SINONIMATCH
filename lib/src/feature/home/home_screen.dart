import 'package:app/src/feature/widgets/buttons/custom_elevated_button.dart';
import 'package:app/src/feature/widgets/buttons/custom_outline_button.dart';
import 'package:flutter/material.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});
  static const String routeName = '/home';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // appBar: AppBar(title: const Text('Home')),
      body: SafeArea(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Padding(
              padding: const EdgeInsets.only(top: 15),
              child: Text(
                '¡Bienvenido a AnoniMatch!',
                style: Theme.of(context).textTheme.titleLarge,
              ),
            ),
            Expanded(
              child: SingleChildScrollView(
                child: Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 15),
                  child: Column(
                    spacing: 15,
                    children: [
                      Container(
                        margin: const EdgeInsets.all(16.0),
                        child: const Text(
                          'Selecciona una opción del menú para comenzar ',
                          textAlign: TextAlign.center,
                        ),
                      ),
                      const SizedBox(height: 20),
                      const CustomElevatedButton(
                        text: 'Continuar partida',
                        expaned: true,
                      ),
                      CustomElevatedButton(
                        text: 'Nueva partida',
                        expaned: true,
                        onPressed: () {},
                      ),
                      CustomElevatedButton(
                        text: 'historial de partidas',
                        expaned: true,
                        onPressed: () {},
                      ),
                    ],
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
