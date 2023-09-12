import 'package:bizqplatform/pages/index_screen/index.dart';
import 'package:bizqplatform/statements/super/super_screen_body/super_screen_body_cubit.dart';
import 'package:bizqplatform/statements/tips/tips_cubit.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'router.dart';
import 'services/service_locator.dart';
import 'statements/secure_guard/secure_guard_cubit.dart';
import 'statements/sign_in/sign_in_cubit.dart';

void main() async {
  WidgetsBinding widgetsBinding = WidgetsFlutterBinding.ensureInitialized();
  await initServiceLocator();
  runApp(MultiBlocProvider(
    providers: [
      BlocProvider(create: (context) => SuperScreenBodyCubit()),
      BlocProvider(create: (context) => SecureGuardCubit()),
      BlocProvider(create: (context) => SignInCubit()),
      BlocProvider(create: (context) => TipsCubit()),
    ],
    child: const MyApp(),
  ));
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'BizQ Super',
      theme: ThemeData(
        // This is the theme of your application.
        //
        // Try running your application with "flutter run". You'll see the
        // application has a blue toolbar. Then, without quitting the app, try
        // changing the primarySwatch below to Colors.green and then invoke
        // "hot reload" (press "r" in the console where you ran "flutter run",
        // or simply save your changes to "hot reload" in a Flutter IDE).
        // Notice that the counter didn't reset back to zero; the application
        // is not restarted.
        primarySwatch: Colors.blue,
      ),
      initialRoute: IndexScreen.routeName,
      routes: AppRouter.routes,
    );
  }
}
