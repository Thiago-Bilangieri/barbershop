import 'package:asyncstate/widget/async_state_builder.dart';
import 'package:barbershop/src/features/splash/splash_page.dart';
import 'package:flutter/material.dart';

class BarbershopApp extends StatelessWidget {
  const BarbershopApp({super.key});

  @override
  Widget build(BuildContext context) {
    return AsyncStateBuilder(
      builder: (asyncNavigatorObserver) => MaterialApp(
        title: "Barbershop",
        navigatorObservers: [asyncNavigatorObserver],
        routes: {
          "/": (context) => const SplashPage(),
        },
      ),
    );
  }
}
