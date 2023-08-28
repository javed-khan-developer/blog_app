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
                PrimaryButton(
                  title: "Get Request",
                  onPressed: () {
                    // AutoRouter.of(context).push(
                    //   const AuthRoute(),
                    // );
                    // ApiClient().getRequest(path: ApiEndpoints.tags);
                    TagsRepo().getAllTags();
                  },
                ),
                PrimaryButton(
                  title: "Post Request",
                  onPressed: () {
                    // ApiClient().postRequest(path: path, body: body)
                    // AutoRouter.of(context).push(
                    //   const AuthRoute(),
                    // );
                  },
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
