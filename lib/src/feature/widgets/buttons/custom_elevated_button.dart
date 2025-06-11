import 'package:flutter/material.dart';

class CustomElevatedButton extends StatelessWidget {
  const CustomElevatedButton({
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
      return Row(children: [Expanded(child: button(context))]);
    }
    return button(context);
  }

  Widget button(BuildContext context) {
    return ElevatedButton(
      style: buttonStyle,
      onPressed: onPressed,
      child:
          child ??
          Text(
            text ?? 'Press me!',
            // style: textStyle ??
            //     Theme.of(context).elevatedButtonTheme.style!.textStyle?.resolve(
            //       const <WidgetState>{
            //         WidgetState.disabled,
            //         WidgetState.pressed,
            //         WidgetState.focused,
            //       },
            //     ),
          ),
    );
  }
}

class CustomElevatedButtonIcon extends StatelessWidget {
  const CustomElevatedButtonIcon({
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
    return ElevatedButton.icon(
      onPressed: onPressed,
      icon: icon ?? const SizedBox(),
      label: child ?? Text(text ?? 'Press me!'),
    );
  }
}
