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
                  "assets/images/app_logo.png",
                  color: MyColors.primaryColor,
                  height: 42,
                  width: 139,
                ),
                const SizedBox(height: 66),
                PageView(
                  controller: _onboardViewModel.pageController,
                  children: const [
                    OnboardFirst(),
                    OnboardSecond(),
                    OnboardThird(),
                  ],
                ).expand(),
                const SizedBox(height: 61),
                ElevatedButton(
                  onPressed: () {},
                  style: ElevatedButton.styleFrom(
                      backgroundColor: MyColors.primaryColor,
                      minimumSize: Size(MediaQuery.of(context).size.width, 46),
                      shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(11))),
                  child: "Get Started"
                      .text
                      .size(16)
                      .fontWeight(FontWeight.w700)
                      .make(),
                ),
                const SizedBox(height: 61),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    "Skip"
                        .text
                        .color(MyColors.primaryColor)
                        .size(16)
                        .fontWeight(FontWeight.w700)
                        .make(),
                    SmoothPageIndicator(
                      controller: _onboardViewModel.pageController,
                      count: 3,
                      effect: const WormEffect(
                          activeDotColor: MyColors.primaryColor,
                          dotHeight: 12.0,
                          dotWidth: 12.0),
                    ),
                    "Next"
                        .text
                        .color(MyColors.primaryColor)
                        .size(16)
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
