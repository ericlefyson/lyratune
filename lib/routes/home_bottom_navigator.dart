import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:lyratune/components/bottom_navigator.dart';
import 'package:lyratune/routes/app_router.gr.dart' as app_router;

@RoutePage()
class HomeBottomNavigatorScreen extends StatelessWidget {
  const HomeBottomNavigatorScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);
    return Container(
      decoration: BoxDecoration(
        gradient: LinearGradient(
          begin: Alignment.bottomCenter,
          end: Alignment.topCenter,
          stops: const [0.0, 0.95],
          colors: [theme.colorScheme.primary, theme.colorScheme.tertiary],
        ),
      ),
      child: AutoTabsScaffold(
        backgroundColor: Colors.transparent,
        routes: const [
          app_router.HomeRoute(),
          app_router.KeyFinderRoute(),
          app_router.CypherRoute(),
          app_router.ChordLibraryRoute(),
        ],
        bottomNavigationBuilder: (_, tabsRouter) {
          return BottomNavigator(
            tabsRouter: tabsRouter,
          );
        },
      ),
    );
  }
}
