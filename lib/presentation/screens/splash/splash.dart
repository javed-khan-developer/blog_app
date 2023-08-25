part of 'splash_imports.dart';

@RoutePage()
class Splash extends StatefulWidget {
  const Splash({super.key});

  @override
  State<Splash> createState() => _SplashState();
}

class _SplashState extends State<Splash> {
  @override
  void initState() {
    moveToOnboard();
    super.initState();
  }

  moveToOnboard() async {
    await Future.delayed(const Duration(seconds: 4), () {
      AutoRouter.of(context).push(
        OnboardRoute(),
      );
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: MyColors.primaryColor,
      body: SafeArea(
        child: Center(
          child: FadedScaleAnimation(
            child: Image.asset(
              MyAssets.assetsImagesAppLogo,
              color: MyColors.secondaryColor,
              height: 42.h,
              width: 139.w,
            ),
          ),
        ),
      ),
    );
  }
}
