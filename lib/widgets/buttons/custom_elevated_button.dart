import 'package:chat_app/theme/styles/colors/app_colors.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class CustomElevatedButton extends StatelessWidget {
  final String label;
  final VoidCallback onPressed;
  final String? svgIcon;
  final bool enable;
  final TextStyle? btnTextStyle;

  const CustomElevatedButton({
    super.key,
    required this.label,
    required this.onPressed,
    this.svgIcon,
    this.enable = true,
    this.btnTextStyle,
  });

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 48,
      child: ElevatedButton(
        onPressed: enable ? onPressed : null,
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            if (svgIcon != null) ...[
              SvgPicture.asset(
                svgIcon!,
                colorFilter: const ColorFilter.mode(AppColors.white, BlendMode.srcIn),
              ),
              const SizedBox(width: 8),
            ],
            Text(
              label,
              style: btnTextStyle,
            ),
          ],
        ),
      ),
    );
  }
}
