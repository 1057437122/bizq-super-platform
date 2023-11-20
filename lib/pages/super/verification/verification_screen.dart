import 'package:bizqplatform/model/verification_model.dart';
import 'package:bizqplatform/statements/super/verification/verification_cubit.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class VerificationScreen extends StatelessWidget {
  const VerificationScreen({super.key});

  @override
  Widget build(BuildContext context) {
    context.read<VerificationCubit>().fetchData();
    return BlocBuilder<VerificationCubit, List<VerificationModel>>(
      builder: (context, model) {
        return ListView(
          children: List.from(
            model.map(
              (e) => Row(
                children: [
                  Text(e.phone),
                  const Padding(
                    padding: EdgeInsets.all(9),
                    child: Text('|'),
                  ),
                  Text(e.code),
                ],
              ),
            ),
          ),
        );
      },
    );
  }
}
