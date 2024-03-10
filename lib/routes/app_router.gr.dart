// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// AutoRouterGenerator
// **************************************************************************

// ignore_for_file: type=lint
// coverage:ignore-file

// ignore_for_file: no_leading_underscores_for_library_prefixes
import 'package:auto_route/auto_route.dart' as _i6;
import 'package:lyratune/routes/home_bottom_navigator.dart' as _i3;
import 'package:lyratune/screens/chord_library/chord_library.dart' as _i1;
import 'package:lyratune/screens/cypher/cypher.dart' as _i2;
import 'package:lyratune/screens/home/home.dart' as _i4;
import 'package:lyratune/screens/key_finder/key_finder.dart' as _i5;

abstract class $AppRouter extends _i6.RootStackRouter {
  $AppRouter({super.navigatorKey});

  @override
  final Map<String, _i6.PageFactory> pagesMap = {
    ChordLibraryRoute.name: (routeData) {
      return _i6.AutoRoutePage<dynamic>(
        routeData: routeData,
        child: const _i1.ChordLibraryScreen(),
      );
    },
    CypherRoute.name: (routeData) {
      return _i6.AutoRoutePage<dynamic>(
        routeData: routeData,
        child: const _i2.CypherScreen(),
      );
    },
    HomeBottomNavigatorRoute.name: (routeData) {
      return _i6.AutoRoutePage<dynamic>(
        routeData: routeData,
        child: const _i3.HomeBottomNavigatorScreen(),
      );
    },
    HomeRoute.name: (routeData) {
      return _i6.AutoRoutePage<dynamic>(
        routeData: routeData,
        child: const _i4.HomeScreen(),
      );
    },
    KeyFinderRoute.name: (routeData) {
      return _i6.AutoRoutePage<dynamic>(
        routeData: routeData,
        child: const _i5.KeyFinderScreen(),
      );
    },
  };
}

/// generated route for
/// [_i1.ChordLibraryScreen]
class ChordLibraryRoute extends _i6.PageRouteInfo<void> {
  const ChordLibraryRoute({List<_i6.PageRouteInfo>? children})
      : super(
          ChordLibraryRoute.name,
          initialChildren: children,
        );

  static const String name = 'ChordLibraryRoute';

  static const _i6.PageInfo<void> page = _i6.PageInfo<void>(name);
}

/// generated route for
/// [_i2.CypherScreen]
class CypherRoute extends _i6.PageRouteInfo<void> {
  const CypherRoute({List<_i6.PageRouteInfo>? children})
      : super(
          CypherRoute.name,
          initialChildren: children,
        );

  static const String name = 'CypherRoute';

  static const _i6.PageInfo<void> page = _i6.PageInfo<void>(name);
}

/// generated route for
/// [_i3.HomeBottomNavigatorScreen]
class HomeBottomNavigatorRoute extends _i6.PageRouteInfo<void> {
  const HomeBottomNavigatorRoute({List<_i6.PageRouteInfo>? children})
      : super(
          HomeBottomNavigatorRoute.name,
          initialChildren: children,
        );

  static const String name = 'HomeBottomNavigatorRoute';

  static const _i6.PageInfo<void> page = _i6.PageInfo<void>(name);
}

/// generated route for
/// [_i4.HomeScreen]
class HomeRoute extends _i6.PageRouteInfo<void> {
  const HomeRoute({List<_i6.PageRouteInfo>? children})
      : super(
          HomeRoute.name,
          initialChildren: children,
        );

  static const String name = 'HomeRoute';

  static const _i6.PageInfo<void> page = _i6.PageInfo<void>(name);
}

/// generated route for
/// [_i5.KeyFinderScreen]
class KeyFinderRoute extends _i6.PageRouteInfo<void> {
  const KeyFinderRoute({List<_i6.PageRouteInfo>? children})
      : super(
          KeyFinderRoute.name,
          initialChildren: children,
        );

  static const String name = 'KeyFinderRoute';

  static const _i6.PageInfo<void> page = _i6.PageInfo<void>(name);
}
