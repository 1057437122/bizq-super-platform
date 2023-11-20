import 'package:bizqplatform/pages/sign_in_screen/sign_in.dart';
import 'package:bizqplatform/pages/super/super_index_screen/super_index_screen.dart';
import 'package:bizqplatform/pages/utils.dart';
import 'package:bizqplatform/statements/secure_guard/secure_guard_cubit.dart';
import 'package:bizqplatform/statements/tips/tips_cubit.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../statements/secure_guard/secure_guard_state.dart';
import '../../statements/tips/tips_state.dart';

class IndexScreen extends StatelessWidget {
  static const routeName = '/';
  const IndexScreen({super.key});

  @override
  Widget build(BuildContext context) {
    context.read<SecureGuardCubit>().fetch();
    return Scaffold(
        body: BlocListener<TipsCubit, TipsState>(
      listener: (context, tipsState) {
        if (tipsState is TipsData) {
          showTips(context, tipsState.tipsModel);
        }
      },
      child: BlocBuilder<SecureGuardCubit, SecureGuardState>(
        builder: (context, secureState) {
          if (secureState is SecureGuardDenied) {
            return const SignInScreen();
          }
          return SuperIndexScreen();
        },
      ),
    ));
  }
}
