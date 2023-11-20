const String urlHost = 'http://127.0.0.1:8080';
const String backendApi = 'BACKEND';

class UrlConfig {
  static String get signInUrl =>
      '${backendApi}API/api/v1/super-user/login?did=';

  static String get verificationUrl =>
      '${backendApi}API/api/v1/super/user-verifications?did=';
}
