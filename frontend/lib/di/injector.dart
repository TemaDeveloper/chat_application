import 'package:chat_app/navigation/app_router.dart';
import 'package:get_it/get_it.dart';

final GetIt getIt = GetIt.instance;
void setupLocator() {
  getIt.registerLazySingleton<AppRouter>(() => AppRouter());
  
}