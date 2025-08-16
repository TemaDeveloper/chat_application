import 'package:chat_app/theme/styles/colors/app_colors.dart';
import 'package:flutter/material.dart';

class PasswordInputField extends StatefulWidget {
  final String? hintText;
  final IconData? prefixIcon;
  final IconData? suffixIcon;
  final TextEditingController? controller;

  const PasswordInputField({
    super.key,
    this.hintText,
    this.prefixIcon,
    this.suffixIcon,
    this.controller,
  });

  @override
  State<PasswordInputField> createState() => _PasswordInputFieldState();
}

class _PasswordInputFieldState extends State<PasswordInputField> {
  bool _obscureText = true;

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        color: AppColors.inputFieldBackground, 
        borderRadius: BorderRadius.circular(0),
        border: Border.all(color: AppColors.borderColor), 
      ),
      child: TextField(
        controller: widget.controller,
        obscureText: _obscureText,
        style: const TextStyle(color: AppColors.textColorWhite), 
        decoration: InputDecoration(
          hintText: widget.hintText,
          hintStyle: const TextStyle(color: AppColors.textColorWhite54), 
          prefixIcon: widget.prefixIcon != null ? Icon(widget.prefixIcon, color: AppColors.textColorWhite70) : null,
          suffixIcon: widget.suffixIcon != null
              ? IconButton(
                  icon: Icon(
                    _obscureText ? Icons.visibility_off_outlined : Icons.visibility_outlined,
                    color: AppColors.textColorWhite70, 
                  ),
                  onPressed: () {
                    setState(() {
                      _obscureText = !_obscureText;
                    });
                  },
                  splashColor: Colors.transparent,
                  highlightColor: Colors.transparent,
                )
              : null,
          contentPadding: const EdgeInsets.symmetric(vertical: 15.0, horizontal: 20.0),
          border: InputBorder.none,
          enabledBorder: InputBorder.none,
          focusedBorder: InputBorder.none,
        ),
      ),
    );
  }
}
