part of 'common_widgets_imports.dart';

class OutlineButton extends StatelessWidget {
  final String title;
  final VoidCallback onPressed;
  const OutlineButton({
    super.key,
    required this.title,
    required this.onPressed,
  });

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      onPressed: onPressed,
      style: ElevatedButton.styleFrom(
          backgroundColor: Colors.transparent,
          minimumSize: Size(MediaQuery.of(context).size.width, 50.h),
          side: const BorderSide(color: MyColors.white),
          shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(11.r))),
      child: title.text.size(16.sp).fontWeight(FontWeight.w700).make(),
    );
  }
}
