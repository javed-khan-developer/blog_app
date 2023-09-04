part of 'login_imports.dart';

class LoginViewModel {
  final Repository repository;

  LoginViewModel({required this.repository});
  final TextEditingController emailcontroller = TextEditingController();
  final TextEditingController passwordcontroller = TextEditingController();
  final _formKey = GlobalKey<FormState>();

  login(context) async {
    var logindata = await repository.authRepo.userLogin(
        email: emailcontroller.text,
        password: passwordcontroller.text,
        context: context);
    if (logindata.accessToken != null) {
      Utils.saveToken(logindata.accessToken.toString());
      AutoRouter.of(context).push(const GeneralRoute());
    } else {}
  }
}
