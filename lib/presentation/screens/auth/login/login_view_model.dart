part of 'login_imports.dart';

class LoginViewModel {
  final Repository repository;

  LoginViewModel({required this.repository});

  final TextEditingController emailController = TextEditingController();
  final TextEditingController passwordController = TextEditingController();
  final _formKey = GlobalKey<FormState>();

  login(context) async {
    var loginData = await repository.authRepo.userLogin(
        email: emailController.text,
        password: passwordController.text,
        context: context);
    if (loginData.accessToken != null) {
      UserPreference.storeString(
          SharedPrefKeys.token, loginData.accessToken ?? '');
      AutoRouter.of(context).push(const GeneralRoute());
    } else {}
  }
}
