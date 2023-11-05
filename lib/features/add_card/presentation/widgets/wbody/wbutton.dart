import 'package:flutter/material.dart';

class WButton extends StatelessWidget {
  final Widget child;
  final Color? color;
  final VoidCallback onPressed;

  const WButton({
    super.key,
    required this.child,
    this.color,
    required this.onPressed,
  });

  @override
  Widget build(BuildContext context) {
    return MaterialButton(
        elevation: 0,
        height: 52,
        minWidth: double.infinity,
        color: color,
        shape: RoundedRectangleBorder(
            side: const BorderSide(
              width: 1,
              color: Color(0xFF37BD6B),
            ),
            borderRadius: BorderRadius.circular(8)),
        onPressed: onPressed,
        child: Center(child: child));
  }
}
