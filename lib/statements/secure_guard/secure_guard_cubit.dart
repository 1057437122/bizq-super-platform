import 'package:bizqplatform/config/app_config.dart';
import 'package:bizqplatform/services/service_locator.dart';
import 'package:bizqplatform/statements/secure_guard/secure_guard_state.dart';
import 'package:bloc/bloc.dart';
import 'package:shared_preferences/shared_preferences.dart';

class SecureGuardCubit extends Cubit<SecureGuardState> {
  SecureGuardCubit() : super(SecureGuardDenied());

  fetch() async {
    try {
      // get token from local storage
      String? token = getIt<SharedPreferences>().getString(AppConfig.tokenFlag);
      if (token != null) {
        emit(SecureGuardGranted(token));
        return;
      }
    } catch (e) {
      //
    }
    emit(SecureGuardDenied());
  }
}
