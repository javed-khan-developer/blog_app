part of 'register_imports.dart';

@RoutePage()
class Register extends StatefulWidget {
  const Register({super.key});

  @override
  State<Register> createState() => _RegisterState();
}

class _RegisterState extends State<Register> {
  final TextEditingController _emailController = TextEditingController();
  final TextEditingController _passwordController = TextEditingController();
  final TextEditingController _confirmPasswordController =
      TextEditingController();
  final _formKey = GlobalKey<FormState>();
  bool _isButtonEnable = false;

  void _validateForm() {
    if (_formKey.currentState!.validate()) {
      AutoRouter.of(context).push(const GeneralRoute());
      _emailController.clear();
      _passwordController.clear();
      _confirmPasswordController.clear();
    } else {
      ScaffoldMessenger.of(context).showSnackBar(
        const SnackBar(content: Text("Form Invalid")),
      );
    }
  }

  @override
  void initState() {
    _emailController.addListener(_checkButtonState);
    _passwordController.addListener(_checkButtonState);
    _confirmPasswordController.addListener(_checkButtonState);
    super.initState();
  }

  void _checkButtonState() {
    final emailField = _emailController.text.isNotEmpty;
    final passwordField = _passwordController.text.length > 8;
    final confirmPasswordField =
        _confirmPasswordController.text == _passwordController.text;
    setState(() {
      _isButtonEnable = emailField && passwordField && confirmPasswordField;
    });
  }

  @override
  void dispose() {
    _emailController.dispose();
    _passwordController.dispose();
    _passwordController.dispose();
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
                      key: _formKey,
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
                            controller: _emailController,
                            validator: (value) {
                              return value!.isEmpty
                                  ? "Email cant be empty"
                                  : null;
                            },
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
                            controller: _passwordController,
                            validator: (value) {
                              return value!.length < 8
                                  ? "value can not be less than 8"
                                  : null;
                            },
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
                            controller: _confirmPasswordController,
                            validator: (value) {
                              return _confirmPasswordController.value !=
                                      _passwordController.value
                                  ? "password should be same "
                                  : null;
                            },
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
                          _isButtonEnable
                              ? PrimaryButton(
                                  onPressed: () {
                                    _validateForm();
                                  },
                                  title: "Register",
                                )
                              : const Center(
                                  child: ElevatedButton(
                                    onPressed: null,
                                    child: Text("Register"),
                                  ),
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
                                  ..onTap = () => AutoRouter.of(context)
                                      .push(const LoginRoute()),
                                text: " Login",
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
