import 'package:app/src/common/theme/colors.dart';
import 'package:app/src/feature/widgets/buttons/custom_text_button.dart';
import 'package:flutter/material.dart';

enum AlertType { success, error, warning, info, none }

class CustomAlert {
  static Future<bool> dialog(
    BuildContext context, {
    AlertType? type = AlertType.none,
    String? title,
    String? message,
    String? textButton,
    VoidCallback? onPressed,
    String? textButtomCancel,
    VoidCallback? onPressedCancel,
    Color? colorButtonCancel,
  }) async {
    return showDialog<bool>(
      context: context,

      builder:
          (_) => AlertDialog(
            actionsPadding: const EdgeInsets.symmetric(
              vertical: 10,
              horizontal: 10,
            ),
            iconPadding: const EdgeInsets.only(top: 10, right: 4),
            actionsAlignment: MainAxisAlignment.end,
            // contentPadding: const EdgeInsets.all(10),
            icon: Row(
              crossAxisAlignment: CrossAxisAlignment.end,
              mainAxisAlignment: MainAxisAlignment.end,
              children: [
                IconButton(
                  onPressed: () {
                    Navigator.pop(context, false);
                  },
                  icon: const Icon(Icons.close),
                ),
              ],
            ),
            title: Row(
              children: [
                if (type != AlertType.none)
                  Padding(
                    padding: const EdgeInsets.only(right: 8),
                    child: Icon(
                      size: 30,
                      type == AlertType.success
                          ? Icons.check_circle
                          : type == AlertType.error
                          ? Icons.error
                          : type == AlertType.warning
                          ? Icons.warning
                          : Icons.info,
                      color:
                          type == AlertType.success
                              ? AppColors.success
                              : type == AlertType.error
                              ? AppColors.error
                              : type == AlertType.warning
                              ? AppColors.warning
                              : AppColors.primaryColor,
                    ),
                  ),
                Expanded(
                  child: Text(
                    title ?? 'Ooops!',
                    style: Theme.of(context).textTheme.bodyLarge!.copyWith(
                      fontWeight: FontWeight.bold,
                    ),
                    textAlign: TextAlign.left,
                  ),
                ),
              ],
            ),
            content: Text(
              message ?? 'Error',
              style: Theme.of(context).textTheme.bodyMedium,
            ),
            actions: [
              if (onPressedCancel != null)
                CustomTextButton(
                  // buttonStyle: CustomButtonStyle.cancel(context),
                  // textStyle: CustomTextStyle.cancel(context),
                  text: textButtomCancel ?? 'Cancelar',
                  onPressed: onPressedCancel,
                ),
              CustomTextButton(
                text: textButton ?? 'Aceptar',
                // textStyle: CustomTextStyle.accepted(context),
                // buttonStyle: CustomButtonStyle.accepted(context),
                onPressed: () {
                  Navigator.pop(context, true);
                  onPressed?.call();
                },
              ),
            ],
          ),
    ).then((value) => value ?? false);
  }

  // showSnackBar
  static void showSnackBar(
    BuildContext context, {
    String? title,
    String? message,
    String? textButton,
    VoidCallback? onPressed,
  }) {
    ScaffoldMessenger.of(context).showSnackBar(
      SnackBar(
        content: Text(message ?? 'Error'),
        action:
            onPressed != null
                ? SnackBarAction(label: textButton ?? '', onPressed: onPressed)
                : null,
      ),
    );
  }
}
