import 'package:bizqplatform/config/app_config.dart';
import 'package:bizqplatform/config/url_config.dart';
import 'package:bizqplatform/model/error_model.dart';
import 'package:bizqplatform/services/request_service.dart';
import 'package:bizqplatform/services/service_locator.dart';
import 'package:bizqplatform/statements/sign_in/sign_in_state.dart';
import 'package:bloc/bloc.dart';
import 'package:shared_preferences/shared_preferences.dart';

class SignInCubit extends Cubit<SignInState> {
  SignInCubit() : super(SignInInitial());

  fetch(String username, String password) async {
    try {
      var res = await getIt<RequestService>().postData(UrlConfig.signInUrl, {
        'name': username,
        'password': password,
      });
      if (res.success) {
        await getIt<SharedPreferences>().setString(
          AppConfig.tokenFlag,
          res.data['token'],
        );
        emit(SignInSuccess(res.data['token']));
      } else {
        emit(SignInInitial());
      }
    } catch (e) {
      emit(SignInError(ErrorModel(
        code: 500,
        type: 'systemError',
        msg: e.toString(),
        details: e.toString(),
      )));
    }
  }
}
