import 'package:ammotiobyshelbourne/app/utils/config/app_colors.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:get/get.dart';

class CustomTextFormField extends StatelessWidget {
  final TextEditingController? controller;
  final TextInputType? inputType;
  final TextInputAction? inputAction;
  final bool? enabled;
  final bool? readOnly;
  final bool? disabledColor;
  final bool? enabledBorder;
  final String? hintText;
  final String? label;
  final Widget? suffixWidget;
  final Function(String) onchanged;
  final Function(String)? onFiledSubmitted;
  final String? Function(String?)? validator;
  final Color? borderColor;
  final Color? textColor;
  final double? height;
  final double? hintTextSize;
  final TextDecoration? hintDecoration;
  final EdgeInsetsGeometry? contentPadding;
  final TextAlign? textAlign;
  final Widget? prefixWidget;
  final FocusNode? focusNode;
  final List<TextInputFormatter>? inputFormatters;

  final double? borderRadius;
  const CustomTextFormField({
    super.key,
    this.controller,
    this.inputType,
    this.inputAction,
    required this.onchanged,
    this.onFiledSubmitted,
    this.validator,
    this.enabled,
    this.borderRadius,
    this.hintText,
    this.label,
    this.suffixWidget,
    this.borderColor,
    this.height,
    this.contentPadding,
    this.textAlign,
    this.prefixWidget,
    this.textColor,
    this.focusNode,
    this.hintTextSize,
    this.hintDecoration,
    this.enabledBorder,
    this.readOnly,
    this.disabledColor,
    this.inputFormatters,
  });
  static const InputBorder transparentBorder = OutlineInputBorder(
    borderSide: BorderSide(
      color: AppColors.transparent,
    ),
  );
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: height,
      child: TextFormField(
        // initialValue: ,
        controller: controller,
        focusNode: focusNode,
        keyboardType: inputType,
        textInputAction: inputAction ?? TextInputAction.next,
        textAlign: textAlign ?? TextAlign.start,
        inputFormatters: inputFormatters,
        maxLines: 1,
        enabled: enabled ?? true,
        readOnly: readOnly ?? false,
        style: Get.textTheme.bodyLarge!
            .copyWith(color: textColor ?? AppColors.black),
        cursorColor: AppColors.accentColor,
        decoration: InputDecoration(
          filled: true,
          fillColor:
              disabledColor == true ? AppColors.greyShade300 : AppColors.white,
          counterText: '',
          hintStyle: Get.textTheme.bodySmall?.copyWith(
            decoration: hintDecoration,
            decorationColor: AppColors.grey,
            fontSize: hintTextSize ?? 14,
            color: AppColors.grey,
          ),
          hintText: hintText ?? "",
          labelText: label,
          prefixIcon: prefixWidget,
          suffixIcon: suffixWidget,
          enabledBorder: enabledBorder != false
              ? OutlineInputBorder(
                  borderRadius: BorderRadius.circular(15),
                  borderSide: const BorderSide(
                    color: AppColors.grey,
                    width: 1,
                  ),
                )
              : OutlineInputBorder(
                  borderRadius: BorderRadius.circular(15),
                  borderSide: const BorderSide(
                    color: AppColors.transparent,
                    width: 1,
                  ),
                ),
          focusedBorder: OutlineInputBorder(
              borderRadius: BorderRadius.circular(15),
              borderSide: const BorderSide(
                width: 1,
                color: AppColors.grey,
              )),
          contentPadding: contentPadding,
        ),
        onChanged: onchanged,
        onFieldSubmitted: onFiledSubmitted,
        validator: validator,
      ),
    );
  }
}
