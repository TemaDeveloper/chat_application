import 'package:chat_app/navigation/app_router.dart';
import 'package:chat_app/theme/app_theme.dart';
import 'package:flutter/material.dart';
import 'l10n/app_localizations.dart';
import 'package:chat_app/di/injector.dart';


void main() {
  setupLocator();
  runApp(
    const ChatApp(),
  );
}

class ChatApp extends StatelessWidget {
  const ChatApp({super.key});

  @override
  Widget build(BuildContext context) {
    final appRouter = getIt<AppRouter>();
    return MaterialApp.router(
        
        routerConfig: appRouter.config(),
        localizationsDelegates: const [
          ...AppLocalizations.localizationsDelegates,
        ],
        supportedLocales: AppLocalizations.supportedLocales,
        theme: AppTheme(context).darkTheme());
  }
}
