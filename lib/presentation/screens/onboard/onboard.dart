part of 'onboard_imports.dart';

@RoutePage()
class Onboard extends StatelessWidget {
  Onboard({super.key});
  final OnboardViewModel _onboardViewModel = OnboardViewModel();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Center(
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 24),
            child: Column(
              children: [
                Image.asset(
                  MyAssets.assetsImagesAppLogo,
                  color: MyColors.primaryColor,
                  height: 42.h,
                  width: 139.w,
                ),
                SizedBox(height: 63.h),
                PageView(
                  controller: _onboardViewModel.pageController,
                  children: const [
                    OnboardFirst(),
                    OnboardSecond(),
                    OnboardThird(),
                  ],
                ).expand(),
                SizedBox(height: 61.h),
                ElevatedButton(
                  onPressed: () =>
                      AutoRouter.of(context).push(const AuthRoute()),
                  style: ElevatedButton.styleFrom(
                      backgroundColor: MyColors.primaryColor,
                      minimumSize:
                          Size(MediaQuery.of(context).size.width, 50.h),
                      shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(11.r))),
                  child: "Get Started"
                      .text
                      .size(16.sp)
                      .fontWeight(FontWeight.w700)
                      .make(),
                ),
                SizedBox(height: 61.h),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    "Skip"
                        .text
                        .color(MyColors.primaryColor)
                        .size(16.sp)
                        .fontWeight(FontWeight.w700)
                        .make(),
                    SmoothPageIndicator(
                      controller: _onboardViewModel.pageController,
                      count: 3,
                      effect: WormEffect(
                          activeDotColor: MyColors.primaryColor,
                          dotHeight: 12.h,
                          dotWidth: 12.w),
                    ),
                    "Next"
                        .text
                        .color(MyColors.primaryColor)
                        .size(16.sp)
                        .fontWeight(FontWeight.w700)
                        .make(),
                  ],
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}