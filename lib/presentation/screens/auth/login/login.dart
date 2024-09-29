part of 'login_imports.dart';

@RoutePage()
class Login extends StatefulWidget {
  const Login({super.key});

  @override
  State<Login> createState() => _LoginState();
}

class _LoginState extends State<Login> {
  late LoginViewModel loginViewModel;

  @override
  void initState() {
    loginViewModel = LoginViewModel(repository: context.read<Repository>());
    super.initState();
  }

  @override
  void dispose() {
    loginViewModel.emailController.dispose();
    loginViewModel.passwordController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: MyColors.primaryColor,
      body: SafeArea(
        child: SingleChildScrollView(
          child: FadedScaleAnimation(
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
                    child: Form(
                      key: loginViewModel._formKey,
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          50.h.heightBox,
                          "Login"
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
                            controller: loginViewModel.emailController,
                            fillColor: Colors.transparent,
                            borderColor: MyColors.primaryColor,
                            borderType: VxTextFieldBorderType.roundLine,
                            borderRadius: 10.r,
                            prefixIcon: const Icon(Icons.email),
                            validator: (email) {
                              if (email!.isEmpty) {
                                return "email is empty";
                              } else if (!email.isValidEmail) {
                                return "invalid email";
                              }
                              return null;
                            },
                          ),
                          20.h.heightBox,
                          "Password".text.make(),
                          8.h.heightBox,
                          VxTextField(
                            controller: loginViewModel.passwordController,
                            isPassword: true,
                            obscureText: true,
                            fillColor: Colors.transparent,
                            borderColor: MyColors.primaryColor,
                            borderType: VxTextFieldBorderType.roundLine,
                            borderRadius: 10.r,
                            prefixIcon: const Icon(Icons.lock),
                            validator: (password) {
                              if (password!.isEmpty) {
                                return "password is empty";
                              } else if (password.length < 8) {
                                return "password should be of minimum 8 characters";
                              } /* else if (!password.isValidPassword) {
                                 return "invalid password";
                               }*/
                              return null;
                            },
                          ),
                          40.h.heightBox,
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              SizedBox(
                                width: 200.w,
                                child: CheckboxListTile(
                                  controlAffinity:
                                      ListTileControlAffinity.leading,
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
                            onPressed: () {
                              if (loginViewModel._formKey.currentState!
                                  .validate()) {
                                loginViewModel.login(context);
                              }
                            },
                            title: "Login",
                          ),
                          20.h.heightBox,
                          "Don't have an account?"
                              .richText
                              .color(MyColors.primaryColor)
                              .size(14)
                              .semiBold
                              .withTextSpanChildren(
                            [
                              TextSpan(
                                recognizer: TapGestureRecognizer()
                                  ..onTap = () => AutoRouter.of(context)
                                      .push(const RegisterRoute()),
                                text: " Sign Up",
                                style: const TextStyle(
                                    fontWeight: FontWeight.w700),
                              )
                            ],
                          ).makeCentered()
                        ],
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
