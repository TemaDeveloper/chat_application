import 'package:auto_route/auto_route.dart';
import 'package:chat_app/constants/app_assets.dart';
import 'package:chat_app/di/injector.dart';
import 'package:chat_app/l10n/app_localizations.dart';
import 'package:chat_app/navigation/app_router.dart';
import 'package:chat_app/navigation/app_router.gr.dart';
import 'package:chat_app/theme/styles/colors/app_colors.dart';
import 'package:chat_app/widgets/buttons/social_login_button.dart';
import 'package:chat_app/widgets/inputs/custom_input_text.dart';
import 'package:chat_app/widgets/inputs/password_input_text.dart';
import 'package:chat_app/widgets/signup/background_particle.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

@RoutePage(name: "SignupRoute")
class SignupScreen extends StatelessWidget {
  const SignupScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final AppLocalizations appLocalizations = AppLocalizations.of(context)!;

    return Scaffold(
      body: Stack(
        children: [
          // Background gradient
          Container(
            decoration: const BoxDecoration(
              gradient: LinearGradient(
                begin: Alignment.topCenter,
                end: Alignment.bottomCenter,
                colors: [
                  AppColors.primaryDarkPurple,
                  AppColors.primaryBlack,
                ],
              ),
            ),
          ),
          // Floating elements (blurry, multi-colored particles)
          BackgroundParticle(
            top: 50,
            left: -20,
            opacity: 0.2,
            width: 120,
            height: 120,
            color: AppColors.particlePurple,
          ),
          BackgroundParticle(
            bottom: 100,
            right: -30,
            opacity: 0.15,
            width: 180,
            height: 180,
            color: AppColors.particlePink,
          ),
          BackgroundParticle(
            top: 200,
            right: 50,
            opacity: 0.25,
            width: 90,
            height: 90,
            color: AppColors.particleDeepPurple,
          ),
          BackgroundParticle(
            top: 150,
            left: 100,
            opacity: 0.18,
            width: 60,
            height: 60,
            color: AppColors.particleBlue,
          ),
          BackgroundParticle(
            bottom: 20,
            left: 50,
            opacity: 0.22,
            width: 110,
            height: 110,
            color: AppColors.particleGreen,
          ),
          BackgroundParticle(
            top: 300,
            right: -10,
            opacity: 0.1,
            width: 130,
            height: 130,
            color: AppColors.particleOrange,
          ),

          SingleChildScrollView(
            child: Column(
              children: [
                // Top Illustration Section
                Container(
                  padding: const EdgeInsets.only(top: 40.0),
                  height: MediaQuery.of(context).size.height * 0.35,
                  width: double.infinity,
                  decoration: BoxDecoration(
                    color: AppColors.primaryBlack.withOpacity(0.4),
                    borderRadius: const BorderRadius.vertical(bottom: Radius.circular(30)),
                    boxShadow: [
                      BoxShadow(
                        color: AppColors.primaryBlack.withOpacity(0.3),
                        spreadRadius: 5,
                        blurRadius: 10,
                        offset: const Offset(0, 3),
                      ),
                    ],
                  ),
                  child: Center(
                      child: SvgPicture.asset(
                    AppAssets.logo_vertical,
                    height: 200,
                  )),
                ),
                // Main Content Card
                Transform.translate(
                  offset: const Offset(0, -30),
                  child: Container(
                    margin: const EdgeInsets.symmetric(horizontal: 20.0),
                    padding: const EdgeInsets.all(25.0),
                    decoration: BoxDecoration(
                      color: AppColors.cardBackground.withOpacity(0.7),
                      borderRadius: BorderRadius.circular(15),
                      boxShadow: [
                        BoxShadow(
                          color: AppColors.primaryBlack.withOpacity(0.5),
                          spreadRadius: 5,
                          blurRadius: 15,
                          offset: const Offset(0, 5),
                        ),
                      ],
                    ),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          appLocalizations.getStartedFreeTitle,
                          style: Theme.of(context).textTheme.titleLarge,
                        ),
                        const SizedBox(height: 30),

                        // Email Field
                        Text(
                          appLocalizations.emailAddressLabel,
                          style: Theme.of(context).textTheme.bodySmall,
                        ),
                        const SizedBox(height: 8),
                        TextInputField(
                          hintText: appLocalizations.emailHint,
                          prefixIcon: Icons.email_outlined,
                        ),
                        const SizedBox(height: 20),

                        // Your Name Field
                        Text(
                          appLocalizations.yourNameLabel,
                          style: Theme.of(context).textTheme.bodySmall,
                        ),
                        const SizedBox(height: 8),
                        TextInputField(
                          hintText: appLocalizations.yourNameHint,
                          prefixIcon: Icons.person_outline,
                        ),
                        const SizedBox(height: 20),

                        // Password Field
                        Text(
                          appLocalizations.passwordLabel,
                          style: Theme.of(context).textTheme.bodySmall,
                        ),
                        const SizedBox(height: 8),
                        PasswordInputField(
                          hintText: appLocalizations.passwordHint,
                          prefixIcon: Icons.lock_outline,
                          suffixIcon: Icons.visibility_off_outlined,
                        ),
                        const SizedBox(height: 10),
                        Align(
                          alignment: Alignment.centerRight,
                          child: TextButton(
                            onPressed: () {
                              // Handle forgot password
                            },
                            child: Text(
                              appLocalizations.forgotPassword,
                              style: Theme.of(context).textTheme.bodyMedium,
                            ),
                          ),
                        ),
                        const SizedBox(height: 30),

                        // Sign Up Button
                        SizedBox(
                          width: double.infinity,
                          height: 55,
                          child: ElevatedButton(
                            onPressed: () {
                              // Handle sign up
                            },
                            style: Theme.of(context).elevatedButtonTheme.style,
                            child: Ink(
                              decoration: const BoxDecoration(
                                gradient: LinearGradient(
                                  colors: [
                                    AppColors.buttonGradientStart,
                                    AppColors.buttonGradientEnd
                                  ],
                                  begin: Alignment.centerLeft,
                                  end: Alignment.centerRight,
                                ),
                                borderRadius: BorderRadius.all(Radius.circular(15)),
                              ),
                              child: Container(
                                alignment: Alignment.center,
                                constraints: const BoxConstraints(minHeight: 55),
                                child: Text(
                                  appLocalizations.signUpButton,
                                  style: const TextStyle(
                                    fontSize: 18,
                                    fontWeight: FontWeight.bold,
                                    color: AppColors.textColorWhite,
                                  ),
                                ),
                              ),
                            ),
                          ),
                        ),
                        const SizedBox(height: 30),

                        // Or sign up with divider
                        Row(
                          children: [
                            const Expanded(child: Divider(color: AppColors.textColorWhite54)),
                            Padding(
                              padding: const EdgeInsets.symmetric(horizontal: 10.0),
                              child: Text(
                                appLocalizations.orSignUpWith,
                                style: Theme.of(context).textTheme.bodySmall,
                              ),
                            ),
                            const Expanded(child: Divider(color: AppColors.textColorWhite54)),
                          ],
                        ),
                        const SizedBox(height: 20),

                        // Social Login Buttons
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                          children: [
                            SocialLoginButton(
                              iconPath: AppAssets.google_icon,
                              onPressed: () {
                                // Handle Google sign up
                              },
                            ),
                            SocialLoginButton(
                              iconPath: AppAssets.facebook_icon,
                              onPressed: () {
                                // Handle Facebook sign up
                              },
                            ),
                            SocialLoginButton(
                              iconPath: AppAssets.x_icon,
                              onPressed: () {
                                // Handle X sign up
                              },
                            ),
                          ],
                        ),
                      ],
                    ),
                  ),
                ),
              ],
            ),
          ),
          Positioned(
            top: 40,
            left: 20,
            child: TextButton(
              onPressed: () {
                context.router.pop();
              },
              child: Text(
                appLocalizations.goBack,
                style: TextStyle(
                  color: AppColors.textColorWhite,
                  fontSize: 16,
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
