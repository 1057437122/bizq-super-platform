import 'package:bizqplatform/model/tip_model.dart';
import 'package:bizqplatform/statements/tips/tips_state.dart';
import 'package:bloc/bloc.dart';

class TipsCubit extends Cubit<TipsState> {
  TipsCubit() : super(TipsEmpty());
  setTips(TipsType type, String msg) {
    emit(TipsData(TipsModel(
      msg: msg,
      type: type,
    )));
    emit(TipsEmpty());
  }
}
