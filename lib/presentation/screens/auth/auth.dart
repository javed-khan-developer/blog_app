part of 'auth_imports.dart';

@RoutePage()
class Auth extends StatefulWidget {
  const Auth({super.key});

  @override
  State<Auth> createState() => _AuthState();
}

class _AuthState extends State<Auth> {
  @override
  Widget build(BuildContext context) {
    return Container(
        decoration: const BoxDecoration(
          image: DecorationImage(
            image: AssetImage(MyAssets.assetsImagesAuthBg),
          ),
        ),
        child: Scaffold(
          backgroundColor: Colors.transparent,
          body: SafeArea(
            child: Padding(
              padding: EdgeInsets.symmetric(horizontal: 24.w),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Image.asset(
                    MyAssets.assetsImagesAppLogoWhite,
                    height: 42.h,
                    width: 139.w,
                  ).centered(),
                  const Spacer(),
                  "Explore the world,\nBillions of Thoughts."
                      .text
                      .size(28.sp)
                      .white
                      .fontWeight(FontWeight.w700)
                      .make(),
                  SizedBox(height: 20.h),
                  PrimaryButton(
                    title: "Login",
                    onPressed: () =>
                        AutoRouter.of(context).push(const LoginRoute()),
                  ),
                  SizedBox(height: 12.h),
                  OutlineButton(
                    title: "Register",
                    onPressed: () =>
                        AutoRouter.of(context).push(const RegisterRoute()),
                  ),
                  SizedBox(height: 12.h),
                ],
              ),
            ),
          ),
        ));
  }
}
