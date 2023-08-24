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
        const OnboardRoute(),
      );
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: MyColors.primaryColor,
      body: SafeArea(
        child: Center(
          child: Image.asset(
            "assets/images/app_logo.png",
            color: MyColors.secondaryColor,
            height: 42,
            width: 139,
          ),
        ),
      ),
    );
  }
}
