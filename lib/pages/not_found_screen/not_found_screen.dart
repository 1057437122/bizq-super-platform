import 'package:flutter/material.dart';

class NotFoundScreen extends StatelessWidget {
  static const routeName = '/not-found';
  const NotFoundScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return const Text('404 not found');
  }
}
