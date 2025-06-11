import 'package:flutter/material.dart';

class CustomOutLineButton extends StatelessWidget {
  const CustomOutLineButton({
    super.key,
    this.onPressed,
    this.child,
    this.text,
    this.expaned = false,
    this.buttonStyle,
    this.textStyle,
  });
  final void Function()? onPressed;
  final String? text;
  final Widget? child;
  final bool? expaned;
  final ButtonStyle? buttonStyle;
  final TextStyle? textStyle;

  @override
  Widget build(BuildContext context) {
    if (expaned ?? false) {
      return Row(
        children: [
          Expanded(child: button(context)),
        ],
      );
    }
    return button(context);
  }

  Widget button(BuildContext context) {
    return OutlinedButton(
      style: buttonStyle,
      onPressed: onPressed,
      child: child ?? Text(text ?? 'Press me!', style: textStyle),
    );
  }
}

class CustomOutLineButtonIcon extends StatelessWidget {
  const CustomOutLineButtonIcon({
    super.key,
    this.onPressed,
    this.child,
    this.text,
    this.icon,
  });
  final void Function()? onPressed;
  final Widget? child;
  final Widget? icon;
  final String? text;

  @override
  Widget build(BuildContext context) {
    return OutlinedButton.icon(
      onPressed: onPressed,
      icon: icon ?? const SizedBox(),
      label: child ?? Text(text ?? 'Press me!'),
    );
  }
}
