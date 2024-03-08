import 'package:auto_route/auto_route.dart';
import 'package:key_finder/routes/route_names.dart';

import 'app_router.gr.dart';

@AutoRouterConfig()
class AppRouter extends $AppRouter {
    @override
    List<AutoRoute> get routes => [
              //   // ======================== Home Routes ========================
        // AutoRoute(
        //   path: HomeRouteNames.root,
        //   page: Splash.page,
        //   initial: true,
        //   fullMatch: true,
        // ),
        AutoRoute(
          path: HomeRouteNames.home,
          page: Home.page,
          initial: true
        ),
        
        // AutoRoute(
        //   path: HomeRouteNames.keyFinder,
        //   page: KeyFinderScreen.page,
        // ),
        // AutoRoute(
        //   path: HomeRouteNames.cipher,
        //   page: CipherScreen.page,
        // ),
    ];
  
}