import 'package:auto_route/auto_route.dart';
import 'package:lyratune/routes/route_names.dart';

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
            path: HomeRouteNames.homeBottomNavigator,
            page: HomeBottomNavigatorRoute.page,
            initial: true,
            children: [
              AutoRoute(
                path: HomeRouteNames.home,
                page: HomeRoute.page,
              ),
              AutoRoute(
                path: HomeRouteNames.keyFinder,
                page: KeyFinderRoute.page,
              ),
              AutoRoute(
                path: HomeRouteNames.cypher,
                page: CypherRoute.page,
              ),
              AutoRoute(
                path: HomeRouteNames.chordLibrary,
                page: ChordLibraryRoute.page,
              ),
            ]),

        // AutoRoute(
        //   path: HomeRouteNames.cipher,
        //   page: CipherScreen.page,
        // ),
      ];
}
