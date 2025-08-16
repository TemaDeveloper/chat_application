import 'package:chat_app/theme/styles/colors/app_colors.dart';
import 'package:flutter/material.dart';

class TextInputField extends StatelessWidget {
  final String? hintText;
  final IconData? prefixIcon;
  final TextEditingController? controller; 

  const TextInputField({
    super.key,
    this.hintText,
    this.prefixIcon,
    this.controller,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        color: AppColors.inputFieldBackground,
        borderRadius: BorderRadius.circular(0),
        border: Border.all(color: AppColors.borderColor), 
      ),
      child: TextField(
        controller: controller, 
        style: const TextStyle(color: AppColors.textColorWhite), 
        decoration: InputDecoration(
          hintText: hintText,
          hintStyle: const TextStyle(color: AppColors.textColorWhite54), 
          prefixIcon: prefixIcon != null ? Icon(prefixIcon, color: AppColors.textColorWhite70) : null, 
          contentPadding: const EdgeInsets.symmetric(vertical: 15.0, horizontal: 20.0),
          border: InputBorder.none, 
          enabledBorder: InputBorder.none,
          focusedBorder: InputBorder.none,
        ),
      ),
    );
  }
}
