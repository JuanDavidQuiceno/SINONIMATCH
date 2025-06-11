import 'package:flutter/material.dart';

class NavigationServices {
  static bool canPop(BuildContext context) {
    return Navigator.canPop(context);
  }

  static void pop(BuildContext context, {bool? result = true}) {
    return Navigator.pop(context, result);
  }

  static Future<dynamic> push(
    BuildContext context, {
    required Widget screen,
    required String routeName,
  }) {
    return Navigator.push(
      context,
      MaterialPageRoute(
        settings: RouteSettings(name: routeName),
        builder: (context) => screen,
      ),
    );
  }

  static Future<dynamic> pushAndRemoveUntil(
    BuildContext context, {
    required Widget screen,
    required String routeName,
  }) {
    return Navigator.pushAndRemoveUntil(
      context,
      MaterialPageRoute(
        settings: RouteSettings(name: routeName),
        builder: (context) => screen,
      ),
      (route) => false,
    );
  }

  static Future<dynamic> pushAndRemoveUntilRouteName(
    BuildContext context, {
    required Widget screen,
    required String routeName,
    required String untilRouteName,
  }) {
    return Navigator.pushAndRemoveUntil(
      context,
      MaterialPageRoute(
        settings: RouteSettings(name: routeName),
        builder: (context) => screen,
      ),
      ModalRoute.withName(untilRouteName),
    );
  }

  static void popUntil(BuildContext context, {required String routeName}) {
    return Navigator.popUntil(context, ModalRoute.withName(routeName));
  }
}
