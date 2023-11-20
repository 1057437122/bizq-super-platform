import 'package:flutter_bloc/flutter_bloc.dart';

class SuperBodyIndexCubit extends Cubit<int> {
  SuperBodyIndexCubit() : super(0);

  setIndex(int i) {
    emit(i);
  }
}
