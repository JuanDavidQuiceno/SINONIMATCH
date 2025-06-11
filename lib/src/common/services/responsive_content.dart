import 'package:flutter/material.dart';

class Responsive extends StatelessWidget {
  const Responsive({
    required this.mobile,
    required this.desktop,
    super.key,
    this.tablet,
  });
  final Widget mobile;
  final Widget? tablet;
  final Widget desktop;

  // This size work fine on my design, maybe you need some customization depends
  // on your design

  // This isMobile, isTablet, isDesktop helep us later
  static bool isMobile(BuildContext context) =>
      MediaQuery.sizeOf(context).width < 800;

  static bool isTablet(BuildContext context) =>
      MediaQuery.sizeOf(context).width < 1100 &&
      MediaQuery.sizeOf(context).width >= 800;

  static bool isDesktop(BuildContext context) =>
      MediaQuery.sizeOf(context).width >= 1100;

  // pixels
  static double mobileWidth(BuildContext context) =>
      MediaQuery.sizeOf(context).width;
  static double tabletWidth(BuildContext context) => 500;
  static double desktopWidth(BuildContext context) => 500;

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.sizeOf(context);
    // If our width is more than 1100 then we consider it a desktop
    if (size.width >= 1100) {
      return desktop;
    }
    // If width it less then 1100 and more then 850 we consider it as tablet
    else if (size.width >= 800 && tablet != null) {
      return tablet!;
    }
    // Or less then that we called it mobile
    else {
      return mobile;
    }
  }
}

class ContainerResposive extends StatelessWidget {
  const ContainerResposive({required this.child, super.key});
  final Widget child;
  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: SafeArea(
        child: SingleChildScrollView(
          child: Container(
            width: MediaQuery.of(context).size.width,
            alignment: Alignment.center,
            child: SizedBox(
              width:
                  Responsive.isDesktop(context) || Responsive.isTablet(context)
                      ? 500
                      : MediaQuery.of(context).size.width,
              child: child,
            ),
          ),
        ),
      ),
    );
  }
}
