import 'package:bizqplatform/model/tip_model.dart';
import 'package:flutter/material.dart';

jump2Page(BuildContext context, String route, {bool replace = false}) {
  if (replace) {
    Navigator.of(context, rootNavigator: true).pushReplacementNamed(route);
  } else {
    Navigator.of(context).pushNamed(route);
  }
}

showTips(BuildContext context, TipsModel tipsModel, {Function? onTap}) {
  ScaffoldMessenger.of(context).showSnackBar(
    SnackBar(
      content: Text(
        tipsModel.msg,
        style: TextStyle(
          color:
              tipsModel.type == TipsType.error ? Colors.red : Colors.amber[400],
        ),
      ),
    ),
  );
}
