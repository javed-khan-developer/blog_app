import 'dart:convert';

import 'package:velocity_x/velocity_x.dart';

import '../../presentation/screens/auth/login/login_model.dart';
import '../data_sources/remote/api_client.dart';
import '../data_sources/remote/api_endpoints.dart';

class AuthRepo extends ApiClient {
  Future<LoginModel> userLogin(
      {required String email, required String password, context}) async {
    Map body = {
      "email": email,
      "password": password,
    };
    try {
      final response = await postRequest(path: ApiEndpoints.login, body: body);
      if (response.statusCode == 200) {
        final responsData = loginModelFromJson(jsonEncode(response.data));
        Vx.log(responsData);
        return responsData;
      } else {
        LoginModel();
      }
    } catch (e) {
      VxToast.show(context, msg: e.toString());
      LoginModel();
    }
    return LoginModel();
  }
}
