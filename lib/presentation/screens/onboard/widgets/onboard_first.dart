part of 'widgets_imports.dart';

class OnboardFirst extends StatelessWidget {
  const OnboardFirst({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Image.asset(
          "assets/images/onboard1.png",
          height: 333,
          width: 333,
        ),
        "Discover, engage and read the latest articles oras well as share your own thoughts and ideas with the community"
            .text
            .align(TextAlign.center)
            .size(15)
            .fontWeight(FontWeight.w500)
            .make(),
      ],
    );
  }
}
