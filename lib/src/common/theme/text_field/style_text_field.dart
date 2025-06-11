import 'package:flutter/material.dart';

enum IconPosition { left, right }

class TextFieldStyle {
  static InputDecoration inputDecoration(
    BuildContext context, {
    bool enabled = true,
    bool filled = false,
    String? hintText,
    String? labelText,
    String? helperText,
    Widget? prefixIcon,
    Widget? suffixIcon,
  }) {
    return InputDecoration(
      filled: filled,
      enabled: enabled,
      hintText: hintText,
      labelText: labelText,
      helperText: helperText,
      prefixIcon: prefixIcon,
      suffixIcon: suffixIcon,
      border: const OutlineInputBorder(),
    );
  }

  static TextStyle style(BuildContext context, {Color? textColor}) {
    return Theme.of(context).textTheme.bodyMedium!.copyWith(color: textColor);
  }
}

// class StyleTextField {
//   static TextStyle style(
//     BuildContext context, {
//     Color? textColor,
//     //  =
//     // AppColors.dark.alertColor,
//   }) {
//     return Theme.of(context).textTheme.bodyLarge!.copyWith(color: textColor);
//   }

//   static InputDecoration inputDecoration(
//     BuildContext context, {
//     bool? filled = false,
//     Color? fillColor,
//     // = AppColors.
//     String? labelText,
//     String? hintText,
//     String? helperText,
//     EdgeInsets? contentPadding,
//     bool? isDense,
//     Widget? suffixIcon,
//     Widget? prefixIcon,
//     bool? enabled = true,
//   }) {
//     return InputDecoration(
//       fillColor: fillColor ?? AppColors.transparent,
//       labelText: labelText,
//       labelStyle: Theme.of(context).textTheme.bodyLarge,
//       hintText: hintText,
//       errorMaxLines: 3,

//       // hoverColor: AppColors.primaryLightColor.withOpacity(0.2),
//       // hintStyle: Theme.of(context).textTheme.bodyLarge?.copyWith(
//       //       color: AppColors.hintColor,
//       //       fontWeight: FontWeight.w400,
//       //     ),
//       // helperText: helperText,
//       // helperStyle: Theme.of(context).textTheme.bodySmall?.copyWith(
//       //       color: AppColors.hintColor,
//       //       fontWeight: FontWeight.w400,
//       //     ),
//       contentPadding:
//           contentPadding ??
//           const EdgeInsets.symmetric(vertical: 13, horizontal: 10),
//       isDense: isDense ?? false,
//       hintMaxLines: 1,
//       suffixIcon: suffixIcon,
//       prefixIcon: prefixIcon,
//       // border: DecorationInput.outline(
//       //   color: enabled! ? AppColors.textColor : AppColors.grey,
//       // ),
//       // focusedBorder: DecorationInput.outline(
//       //   color: enabled ? AppColors.primaryColor : AppColors.grey,
//       // ),
//       // focusedErrorBorder: DecorationInput.outline(
//       //   color: AppColors.red,
//       // ),
//       // disabledBorder: DecorationInput.outline(color: AppColors.textColor),
//       // enabledBorder: DecorationInput.outline(
//       //   color: enabled ? AppColors.textColor : AppColors.grey,
//       // ),
//     );
//   }

//   //   static InputDecoration inputDecorationSecondary(
//   //     BuildContext context, {
//   //     bool? filled = true,
//   //     Color? fillColor = AppColors.header50,
//   //     String? labelText,
//   //     String? hintText,
//   //     String? helperText,
//   //     EdgeInsets? contentPadding,
//   //     bool? isDense,
//   //     Widget? suffixIcon,
//   //     Widget? prefixIcon,
//   //   }) {
//   //     return InputDecoration(
//   //       filled: filled,
//   //       fillColor: fillColor,
//   //       labelText: labelText,
//   //       labelStyle: Theme.of(context).textTheme.bodyLarge,
//   //       hintText: hintText,
//   //       errorMaxLines: 3,
//   //       // hoverColor: AppColors.primaryLightColor.withOpacity(0.2),
//   //       hintStyle: Theme.of(context).textTheme.bodyLarge!.copyWith(
//   //             color: AppColors.texto300,
//   //             fontWeight: FontWeight.w400,
//   //           ),
//   //       helperText: helperText,
//   //       helperStyle: Theme.of(context).textTheme.bodySmall!.copyWith(
//   //             color: AppColors.hintColor,
//   //             fontWeight: FontWeight.w400,
//   //           ),

//   //       contentPadding: contentPadding ??
//   //           const EdgeInsets.symmetric(
//   //             vertical: 13,
//   //             horizontal: 10,
//   //           ),
//   //       isDense: isDense ?? false,
//   //       suffixIcon: suffixIcon,
//   //       prefixIcon: prefixIcon,
//   //       hoverColor: AppColors.primaryColor,
//   //       border: DecorationInput.outline(color: AppColors.transparent),
//   //       focusedBorder: DecorationInput.outline(color: AppColors.primaryColor,
//   // ),
//   //       focusedErrorBorder: DecorationInput.outline(
//   //         color: AppColors.red,
//   //       ),
//   //       disabledBorder: DecorationInput.outline(color: AppColors.transparent,
//   // ),
//   //       enabledBorder: DecorationInput.outline(color: AppColors.transparent,),
//   //     );
//   //   }

//   //   static InputDecoration inputDecorationUnit(
//   //     BuildContext context, {
//   //     Color? fillColor,
//   //     String? labelText,
//   //     String? hintText,
//   //     String? helperText,
//   //     EdgeInsets? contentPadding,
//   //     bool? isDense,
//   //     Widget? suffixIcon,
//   //     Widget? prefixIcon,
//   //     Color? borderColor = AppColors.texto500,
//   //     Color? focusedBorderColor = AppColors.texto500,
//   //     Color? enabledBorderColor = AppColors.texto500,
//   //     Color? disabledBorderColor = AppColors.grey,
//   //   }) {
//   //     return InputDecoration(
//   //       fillColor: fillColor ?? AppColors.transparent,
//   //       labelText: labelText,
//   //       labelStyle: Theme.of(context).textTheme.bodyLarge,
//   //       hintText: hintText,
//   //       errorMaxLines: 3,
//   //       // hoverColor: AppColors.primaryLightColor.withOpacity(0.2),
//   //       hintStyle: Theme.of(context).textTheme.bodyLarge!.copyWith(
//   //             color: AppColors.hintColor,
//   //             fontWeight: FontWeight.w400,
//   //           ),
//   //       helperText: helperText,
//   //       helperStyle: Theme.of(context).textTheme.bodyLarge!.copyWith(
//   //             color: AppColors.hintColor,
//   //             fontWeight: FontWeight.w400,
//   //           ),
//   //       contentPadding: contentPadding ??
//   //           const EdgeInsets.symmetric(
//   //             vertical: 8,
//   //             horizontal: 2,
//   //           ),
//   //       isDense: isDense ?? true,
//   //       suffixIcon: suffixIcon,
//   //       prefixIcon: prefixIcon,
//   //       border: DecorationInput.outline(
//   //         color: borderColor!,
//   //         bordeRadius: 0,
//   //       ),
//   //       focusedBorder:
//   //           DecorationInput.outline(color: focusedBorderColor!, bordeRadius: 0),
//   //       disabledBorder:
//   //           DecorationInput.outline(color: disabledBorderColor!, bordeRadius: 0),
//   //       enabledBorder:
//   //           DecorationInput.outline(color: enabledBorderColor!, bordeRadius: 0),
//   //     );
//   //   }
// }
