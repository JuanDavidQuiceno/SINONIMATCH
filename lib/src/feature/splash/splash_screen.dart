import 'package:app/src/common/services/image_app.dart';
import 'package:app/src/common/services/navigation_services.dart';
import 'package:app/src/common/services/responsive_content.dart';
import 'package:app/src/common/theme/colors.dart';
import 'package:app/src/feature/home/home_screen.dart';
import 'package:custom_image/custom_image.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
// import 'package:go_router/go_router.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({super.key, this.redirect});
  static const String routeName = '/validate';
  final Uri? redirect;
  @override
  SplashScreenState createState() => SplashScreenState();
}

class SplashScreenState extends State<SplashScreen>
    with TickerProviderStateMixin {
  // late AuthBloc authBloc;
  late Animation<double> animation;
  late AnimationController animationController = AnimationController(
    duration: const Duration(milliseconds: 800),
    vsync: this,
  );

  @override
  void initState() {
    super.initState();
    // authBloc = global<AuthBloc>();

    _animationController(begin: 0, end: 0.9);
    animationController.forward().then((value) async {
      await _finishLoad();
    });
  }

  @override
  void dispose() {
    animationController.dispose();
    super.dispose();
  }

  Future<void> _finishLoad() async {
    // ignore: inference_failure_on_instance_creation
    await Future.delayed(const Duration(seconds: 1)).then((value) async {
      _animationController(begin: 0.9, end: 1);
      await animationController.forward().then((value) async {
        await NavigationServices.pushAndRemoveUntil(
          context,
          screen: const HomeScreen(),
          routeName: HomeScreen.routeName,
        );
      });
    });
  }

  void _animationController({
    required double begin,
    required double end,
    int? duration,
  }) {
    animationController = AnimationController(
      duration: Duration(milliseconds: duration ?? 800),
      vsync: this,
    );
    animation = Tween(begin: begin, end: end).animate(animationController)
      ..addListener(() {
        setState(() {
          /* the state that has changed here is the animation object’s value*/
        });
      });
  }

  @override
  Widget build(BuildContext context) {
    final screenSize = MediaQuery.of(context).size;
    return Scaffold(body: _loading(screenSize));
  }

  Widget _loading(Size screenSize) {
    return Container(
      height: screenSize.height,
      width: screenSize.width,
      alignment: Alignment.center,
      child: Stack(
        alignment: Alignment.center,
        children: [
          Container(
            height: screenSize.height,
            width: screenSize.width,
            alignment: Alignment.center,
            // decoration: const BoxDecoration(
            //   gradient: LinearGradient(
            //     begin: Alignment.topRight,
            //     end: Alignment.bottomLeft,
            //     // colors: [AppColors.splashInitial, AppColors.splashFinal],
            //   ),
            // ),
          ),
          SafeArea(
            child: SingleChildScrollView(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: <Widget>[
                  CustomImage(
                    ImagesApp.logo,
                    width:
                        Responsive.isMobile(context)
                            ? screenSize.width * 0.7
                            : 400,
                    childNoImage: const Icon(Icons.image_rounded),
                  ),
                  const SizedBox(height: 20),
                  Container(
                    width:
                        Responsive.isMobile(context)
                            ? screenSize.width * 0.60
                            : 400,
                    margin: const EdgeInsets.only(bottom: 20),
                    padding: EdgeInsets.zero,
                    child: ClipRRect(
                      borderRadius: BorderRadius.circular(20),
                      child: LinearProgressIndicator(
                        minHeight: 5,
                        value: animation.value,
                        // color: AppColors.white,
                        backgroundColor: AppColors.grey,
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
