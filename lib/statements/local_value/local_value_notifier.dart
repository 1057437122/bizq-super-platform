import 'package:bizqplatform/config/app_config.dart';
import 'package:bizqplatform/services/service_locator.dart';
import 'package:flutter/material.dart';
import 'package:shared_preferences/shared_preferences.dart';

ValueNotifier<String> localToken = ValueNotifier('');

initLocalValue() async {
  // token
  var token = getIt<SharedPreferences>().getString(AppConfig.tokenFlag);
  localToken = ValueNotifier(token ?? '');
}
