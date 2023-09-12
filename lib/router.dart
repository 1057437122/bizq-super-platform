import 'package:bizqplatform/pages/index_screen/index.dart';
import 'package:bizqplatform/pages/super/super_index_screen/super_index_screen.dart';
import 'package:flutter/material.dart';

class AppRouter {
  const AppRouter();

  static Map<String, Widget Function(BuildContext)> routes = {
    IndexScreen.routeName: (_) => const IndexScreen(),
    SuperIndexScreen.routeName: (_) => const SuperIndexScreen(),
  };
}
