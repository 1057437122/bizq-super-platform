import 'package:bizqplatform/pages/not_found_screen/not_found_screen.dart';
import 'package:bizqplatform/pages/super/super_index_screen/widget/draw_item.dart';
import 'package:bizqplatform/router.dart';
import 'package:bizqplatform/statements/super/super_screen_body/super_screen_body_cubit.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class SuperIndexScreen extends StatelessWidget {
  static const routeName = '/super-index';
  const SuperIndexScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      drawer: Drawer(
        child: ListView(children: [
          const SizedBox(
            height: 100,
            child: Text('BizQ Super'),
          ),
          DrawItem(child: Text('index page')),
          DrawItem(child: Text('users')),
        ]),
      ),
      body: BlocBuilder<SuperScreenBodyCubit, String>(
        builder: (context, route) {
          return Text(route);
        },
      ),
    );
  }
}
