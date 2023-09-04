part of 'login_imports.dart';

class LoginViewModel {
  final Repository repository;

  LoginViewModel({required this.repository});
  final TextEditingController emailcontroller = TextEditingController();
  final TextEditingController passwordcontroller = TextEditingController();
  final _formKey = GlobalKey<FormState>();
  bool isButtonEnable = false;

  login(context) async {
    var logindata = await repository.authRepo.userLogin(
      email: emailcontroller.text,
      password: passwordcontroller.text,
    );
    if (logindata.accessToken != null) {
      AutoRouter.of(context).push(const GeneralRoute());
    } else {}
  }
}
