part of 'common_widgets_imports.dart';

class PrimaryButton extends StatelessWidget {
  final VoidCallback onPressed;
  final String title;
  const PrimaryButton({
    super.key,
    required this.onPressed,
    required this.title,
  });

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      onPressed: onPressed,
      style: ElevatedButton.styleFrom(
          backgroundColor: MyColors.primaryColor,
          minimumSize: Size(MediaQuery.of(context).size.width, 50.h),
          shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(11.r))),
      child: title.text.size(16.sp).fontWeight(FontWeight.w700).make(),
    );
  }
}
