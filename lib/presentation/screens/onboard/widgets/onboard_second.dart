part of 'widgets_imports.dart';

class OnboardSecond extends StatelessWidget {
  const OnboardSecond({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Image.asset(
          "assets/images/onboard2.png",
          height: 333.h,
          width: 333.w,
        ),
        "Explore a wide selection of categories, or use the search bar to find specific topics"
            .text
            .align(TextAlign.center)
            .size(15.sp)
            .fontWeight(FontWeight.w500)
            .make(),
      ],
    );
  }
}
