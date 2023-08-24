part of 'widgets_imports.dart';

class OnboardThird extends StatelessWidget {
  const OnboardThird({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Image.asset(
          "assets/images/onboard3.png",
          height: 333,
          width: 333,
        ),
        "Customize your reading experience and join the conversation by creating an account."
            .text
            .align(TextAlign.center)
            .size(15)
            .fontWeight(FontWeight.w500)
            .make(),
      ],
    );
  }
}
