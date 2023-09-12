import 'package:bizqplatform/utils.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';

class DrawItem extends StatefulWidget {
  final Widget child;

  const DrawItem({required this.child, super.key});

  @override
  State<DrawItem> createState() => _DrawItemState();
}

class _DrawItemState extends State<DrawItem> {
  bool _isHover = false;
  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () {
        //
      },
      onHover: (value) {
        setState(() {
          _isHover = value;
        });
      },
      child: Container(
        padding: const EdgeInsets.all(20),
        decoration: BoxDecoration(
          color: _isHover ? Colors.amber[200] : Colors.white,
        ),
        child: widget.child,
      ),
    );
  }
}
