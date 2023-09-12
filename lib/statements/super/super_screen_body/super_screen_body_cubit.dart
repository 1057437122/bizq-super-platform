import 'package:bizqplatform/pages/super/super_index_screen/super_index_screen.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class SuperScreenBodyCubit extends Cubit<String> {
  SuperScreenBodyCubit() : super(SuperIndexScreen.routeName);

  setBody(String route) {
    emit(route);
  }
}
