part of 'register_imports.dart';

@RoutePage()
class Register extends StatefulWidget {
  const Register({super.key});

  @override
  State<Register> createState() => _RegisterState();
}

class _RegisterState extends State<Register> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: MyColors.primaryColor,
      body: SafeArea(
        child: SingleChildScrollView(
          child: Column(
            children: [
              Image.asset(
                MyAssets.assetsImagesAppLogoWhite,
                height: 42.h,
                width: 139.w,
              ).centered(),
              100.h.heightBox,
              Container(
                height: MediaQuery.sizeOf(context).height,
                width: MediaQuery.sizeOf(context).width,
                decoration: BoxDecoration(
                  color: MyColors.white,
                  borderRadius: BorderRadius.only(
                      topLeft: Radius.circular(36.r),
                      topRight: Radius.circular(36.r)),
                ),
                child: Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 24),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      50.h.heightBox,
                      "Register"
                          .text
                          .size(18.sp)
                          .color(MyColors.primaryColor)
                          .fontWeight(FontWeight.w700)
                          .make()
                          .centered(),
                      48.h.heightBox,
                      "Email".text.make(),
                      8.h.heightBox,
                      VxTextField(
                        fillColor: Colors.transparent,
                        borderColor: MyColors.primaryColor,
                        borderType: VxTextFieldBorderType.roundLine,
                        borderRadius: 10.r,
                        prefixIcon: const Icon(Icons.email),
                        hint: "johndoe123@gmail.com",
                      ),
                      20.h.heightBox,
                      "Password".text.make(),
                      8.h.heightBox,
                      VxTextField(
                        isPassword: true,
                        obscureText: true,
                        fillColor: Colors.transparent,
                        borderColor: MyColors.primaryColor,
                        borderType: VxTextFieldBorderType.roundLine,
                        borderRadius: 10.r,
                        prefixIcon: const Icon(Icons.lock),
                      ),
                      20.h.heightBox,
                      "Confirm Password".text.make(),
                      8.h.heightBox,
                      VxTextField(
                        isPassword: true,
                        obscureText: true,
                        fillColor: Colors.transparent,
                        borderColor: MyColors.primaryColor,
                        borderType: VxTextFieldBorderType.roundLine,
                        borderRadius: 10.r,
                        prefixIcon: const Icon(Icons.lock),
                      ),
                      40.h.heightBox,
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          SizedBox(
                            width: 200.w,
                            child: CheckboxListTile(
                              controlAffinity: ListTileControlAffinity.leading,
                              contentPadding: EdgeInsets.zero,
                              value: false,
                              onChanged: (value) {},
                              title: "Remember Me".text.make(),
                            ),
                          ),
                          "Forgot Password".text.size(14).make()
                        ],
                      ),
                      40.h.heightBox,
                      PrimaryButton(
                        onPressed: () {},
                        title: "Register",
                      ),
                      20.h.heightBox,
                      "Already have an account?"
                          .richText
                          .color(MyColors.primaryColor)
                          .size(14)
                          .semiBold
                          .withTextSpanChildren(
                        [
                          TextSpan(
                            recognizer: TapGestureRecognizer()
                              ..onTap = () =>
                                  AutoRouter.of(context).push(LoginRoute()),
                            text: " Login",
                            style: TextStyle(fontWeight: FontWeight.w700),
                          )
                        ],
                      ).makeCentered()
                    ],
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}