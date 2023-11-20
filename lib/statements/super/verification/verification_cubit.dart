import 'package:bizqplatform/config/url_config.dart';
import 'package:bizqplatform/model/verification_model.dart';
import 'package:bizqplatform/services/request_service.dart';
import 'package:bizqplatform/services/service_locator.dart';
import 'package:bizqplatform/utils.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class VerificationCubit extends Cubit<List<VerificationModel>> {
  VerificationCubit() : super([]);

  fetchData() async {
    List<VerificationModel> models = [];
    try {
      var res =
          await getIt<RequestService>().fetchData(UrlConfig.verificationUrl);
      models = List.from(
        res.data.map(
          (e) => VerificationModel.fromJson(e),
        ),
      );
    } catch (e) {
      //
      logData('error when fetch verifcation codes: $e');
    }
    emit(models);
  }
}
