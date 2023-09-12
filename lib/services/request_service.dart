import 'package:bizqplatform/config/url_config.dart';
import 'package:bizqplatform/model/respose_model.dart';
import 'package:dio/dio.dart';

class RequestService {
  Dio dio = Dio();

  ResponseModel formatResponse(Response res) {
    bool success = true;
    if (res.statusCode! >= 300 || res.statusCode! < 200) {
      success = false;
    }
    return ResponseModel(success: success, data: res.data);
  }

  String packageParams = "appVersion=";

  String formatUrl(String url) {
    if (url.startsWith('http')) {
      return url;
    }
    List<String> splitedUrl = url.split('API');
    String formatedUrl = url;
    switch (splitedUrl[0]) {
      case backendApi:
        formatedUrl = '$urlHost${splitedUrl[1]}&$packageParams';
        break;
      default:
    }
    return formatedUrl;
  }

  Future<ResponseModel> fetchData(String url) async {
    var res = await dio.get(formatUrl(url));
    return formatResponse(res);
  }

  Future<ResponseModel> postData(String url, dynamic body) async {
    var res = await dio.post(formatUrl(url), data: body);
    return formatResponse(res);
  }

  Future<ResponseModel> patchData(String url, dynamic body) async {
    var res = await dio.patch(formatUrl(url), data: body);
    return formatResponse(res);
  }

  Future<ResponseModel> deleteData(String url) async {
    var res = await dio.delete(formatUrl(url));
    return formatResponse(res);
  }
}
