// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// AutoRouterGenerator
// **************************************************************************

// ignore_for_file: type=lint
// coverage:ignore-file

// ignore_for_file: no_leading_underscores_for_library_prefixes
import 'package:auto_route/auto_route.dart' as _i3;
import 'package:key_finder/screens/home/home.dart' as _i1;
import 'package:key_finder/screens/key_finder/key_finder.dart' as _i2;

abstract class $AppRouter extends _i3.RootStackRouter {
  $AppRouter({super.navigatorKey});

  @override
  final Map<String, _i3.PageFactory> pagesMap = {
    Home.name: (routeData) {
      return _i3.AutoRoutePage<dynamic>(
        routeData: routeData,
        child: const _i1.Home(),
      );
    },
    KeyFinder.name: (routeData) {
      return _i3.AutoRoutePage<dynamic>(
        routeData: routeData,
        child: const _i2.KeyFinder(),
      );
    },
  };
}

/// generated route for
/// [_i1.Home]
class Home extends _i3.PageRouteInfo<void> {
  const Home({List<_i3.PageRouteInfo>? children})
      : super(
          Home.name,
          initialChildren: children,
        );

  static const String name = 'Home';

  static const _i3.PageInfo<void> page = _i3.PageInfo<void>(name);
}

/// generated route for
/// [_i2.KeyFinder]
class KeyFinder extends _i3.PageRouteInfo<void> {
  const KeyFinder({List<_i3.PageRouteInfo>? children})
      : super(
          KeyFinder.name,
          initialChildren: children,
        );

  static const String name = 'KeyFinder';

  static const _i3.PageInfo<void> page = _i3.PageInfo<void>(name);
}
