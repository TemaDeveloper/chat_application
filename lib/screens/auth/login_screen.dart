import 'package:auto_route/auto_route.dart';
import 'package:chat_app/constants/app_assets.dart';
import 'package:chat_app/l10n/app_localizations.dart';
import 'package:chat_app/navigation/app_router.dart';
import 'package:chat_app/navigation/app_router.gr.dart';
import 'package:chat_app/theme/styles/texts/app_text_styles.dart';
import 'package:chat_app/widgets/buttons/custom_elevated_button.dart';
import 'package:chat_app/widgets/inputs/custom_input_text.dart';
import 'package:flutter/material.dart';
import 'package:chat_app/service_locator.dart';

@RoutePage(name: 'LoginRoute')
class LoginScreen extends StatelessWidget {
  const LoginScreen({super.key});

  @override
  Widget build(BuildContext context) {
    TextEditingController _emailController = TextEditingController();
    TextEditingController _passwordController = TextEditingController();

    return Scaffold(
        body: Center(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Image.asset(AppAssets.logo, height: 100, width: 100),
          const SizedBox(height: 20),
          Text("Let\'s Sign You In!", style: AppTextStyles.robotoTitle),
          const SizedBox(height: 20),
          Container(
            decoration: BoxDecoration(
              borderRadius: const BorderRadius.all(Radius.circular(20)),
              color: Colors.grey[200],
            ),
            width: MediaQuery.of(context).size.width * 0.8,
            height: 220,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: CustomInputText(
                      label: AppLocalizations.of(context)!.emailText,
                      controller: _emailController,
                      keyboardType: TextInputType.emailAddress),
                ),
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: CustomInputText(
                      label: AppLocalizations.of(context)!.passwordText,
                      controller: _passwordController,
                      keyboardType: TextInputType.visiblePassword),
                ),
                const SizedBox(height: 10),
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: CustomElevatedButton(
                    label: AppLocalizations.of(context)!.loginButton,
                    onPressed: () {
                      getIt<AppRouter>().replaceAll([HomeRoute()]);
                    },
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    ));
  }
}
