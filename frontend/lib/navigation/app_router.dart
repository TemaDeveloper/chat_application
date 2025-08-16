import 'package:auto_route/auto_route.dart';
import 'package:injectable/injectable.dart';
import 'app_router.gr.dart';

//running `dart pub run build_runner watch --delete-conflicting-outputs` will generate the necessary code for the router.
@singleton
@AutoRouterConfig(replaceInRouteName: 'Screen|Page, Route')
class AppRouter extends RootStackRouter {
  @override
  List<AutoRoute> get routes => [
        AutoRoute(page: LoginRoute.page, initial: true),
        AutoRoute(page: HomeRoute.page),
        AutoRoute(page: ChatRoute.page),
        AutoRoute(page: SignupRoute.page)
      ];
}
