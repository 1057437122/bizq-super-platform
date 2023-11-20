import 'package:bizqplatform/pages/super/super_index_screen/widget/draw_item.dart';
import 'package:bizqplatform/pages/super/user/user_screen.dart';
import 'package:bizqplatform/pages/super/verification/verification_screen.dart';
import 'package:bizqplatform/statements/super/super_body_index/super_body_index_cubit.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class SuperIndexScreen extends StatelessWidget {
  final _navigatorKey = GlobalKey<NavigatorState>();
  static const routeName = '/super-index';
  SuperIndexScreen({super.key});

  @override
  Widget build(BuildContext context) {
    List menus = [
      [
        'Verification',
        const VerificationScreen(),
      ],
      [
        'Users',
        const UserScreen(),
      ]
    ];

    return Scaffold(
        appBar: AppBar(),
        drawer: Drawer(
          child: ListView(children: [
            const SizedBox(
              height: 100,
              child: Text('BizQ Super'),
            ),
            DrawItem(
              onTap: () => context.read<SuperBodyIndexCubit>().setIndex(0),
              child: const Text('verification'),
            ),
            DrawItem(
              onTap: () => context.read<SuperBodyIndexCubit>().setIndex(1),
              child: const Text('users'),
            ),
          ]),
        ),
        body: BlocBuilder<SuperBodyIndexCubit, int>(
          builder: (context, state) {
            return menus[state][1];
          },
        ));
  }
}
