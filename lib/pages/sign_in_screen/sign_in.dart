import 'package:bizqplatform/statements/secure_guard/secure_guard_cubit.dart';
import 'package:bizqplatform/statements/sign_in/sign_in_cubit.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../statements/sign_in/sign_in_state.dart';

class SignInScreen extends StatefulWidget {
  static String routeName = '/sign-in';
  const SignInScreen({super.key});

  @override
  State<SignInScreen> createState() => _SignInScreenState();
}

class _SignInScreenState extends State<SignInScreen> {
  TextEditingController usernameController = TextEditingController();
  TextEditingController passwordController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 8, vertical: 16),
          child: TextFormField(
            controller: usernameController,
            decoration: const InputDecoration(
              border: UnderlineInputBorder(),
              labelText: 'username',
            ),
          ),
        ),
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 8, vertical: 16),
          child: TextFormField(
            controller: passwordController,
            obscureText: true,
            decoration: const InputDecoration(
              border: UnderlineInputBorder(),
              labelText: 'password',
            ),
          ),
        ),
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 8, vertical: 16),
          child: BlocConsumer<SignInCubit, SignInState>(
            listener: (context, signInState) {
              if (signInState is SignInSuccess) {
                context.read<SecureGuardCubit>().fetch();
              }
            },
            builder: (context, signInState) {
              return ElevatedButton(
                onPressed: () {
                  if (signInState is SignInFetching) {
                    return;
                  }
                  context
                      .read<SignInCubit>()
                      .fetch(usernameController.text, passwordController.text);
                },
                child: signInState is SignInFetching
                    ? const CircularProgressIndicator()
                    : Text('Sign in'),
              );
            },
          ),
        ),
      ],
    ));
  }
}
