// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// AutoRouterGenerator
// **************************************************************************

// ignore_for_file: type=lint
// coverage:ignore-file

// ignore_for_file: no_leading_underscores_for_library_prefixes
import 'package:auto_route/auto_route.dart' as _i6;
import 'package:blog_app/presentation/screens/auth/auth_imports.dart' as _i1;
import 'package:blog_app/presentation/screens/auth/login/login_imports.dart'
    as _i2;
import 'package:blog_app/presentation/screens/auth/register/register_imports.dart'
    as _i4;
import 'package:blog_app/presentation/screens/onboard/onboard_imports.dart'
    as _i3;
import 'package:blog_app/presentation/screens/splash/splash_imports.dart'
    as _i5;
import 'package:flutter/material.dart' as _i7;

abstract class $AppRouter extends _i6.RootStackRouter {
  $AppRouter({super.navigatorKey});

  @override
  final Map<String, _i6.PageFactory> pagesMap = {
    AuthRoute.name: (routeData) {
      return _i6.AutoRoutePage<dynamic>(
        routeData: routeData,
        child: const _i1.Auth(),
      );
    },
    LoginRoute.name: (routeData) {
      return _i6.AutoRoutePage<dynamic>(
        routeData: routeData,
        child: const _i2.Login(),
      );
    },
    OnboardRoute.name: (routeData) {
      final args = routeData.argsAs<OnboardRouteArgs>(
          orElse: () => const OnboardRouteArgs());
      return _i6.AutoRoutePage<dynamic>(
        routeData: routeData,
        child: _i3.Onboard(key: args.key),
      );
    },
    RegisterRoute.name: (routeData) {
      return _i6.AutoRoutePage<dynamic>(
        routeData: routeData,
        child: const _i4.Register(),
      );
    },
    SplashRoute.name: (routeData) {
      return _i6.AutoRoutePage<dynamic>(
        routeData: routeData,
        child: const _i5.Splash(),
      );
    },
  };
}

/// generated route for
/// [_i1.Auth]
class AuthRoute extends _i6.PageRouteInfo<void> {
  const AuthRoute({List<_i6.PageRouteInfo>? children})
      : super(
          AuthRoute.name,
          initialChildren: children,
        );

  static const String name = 'AuthRoute';

  static const _i6.PageInfo<void> page = _i6.PageInfo<void>(name);
}

/// generated route for
/// [_i2.Login]
class LoginRoute extends _i6.PageRouteInfo<void> {
  const LoginRoute({List<_i6.PageRouteInfo>? children})
      : super(
          LoginRoute.name,
          initialChildren: children,
        );

  static const String name = 'LoginRoute';

  static const _i6.PageInfo<void> page = _i6.PageInfo<void>(name);
}

/// generated route for
/// [_i3.Onboard]
class OnboardRoute extends _i6.PageRouteInfo<OnboardRouteArgs> {
  OnboardRoute({
    _i7.Key? key,
    List<_i6.PageRouteInfo>? children,
  }) : super(
          OnboardRoute.name,
          args: OnboardRouteArgs(key: key),
          initialChildren: children,
        );

  static const String name = 'OnboardRoute';

  static const _i6.PageInfo<OnboardRouteArgs> page =
      _i6.PageInfo<OnboardRouteArgs>(name);
}

class OnboardRouteArgs {
  const OnboardRouteArgs({this.key});

  final _i7.Key? key;

  @override
  String toString() {
    return 'OnboardRouteArgs{key: $key}';
  }
}

/// generated route for
/// [_i4.Register]
class RegisterRoute extends _i6.PageRouteInfo<void> {
  const RegisterRoute({List<_i6.PageRouteInfo>? children})
      : super(
          RegisterRoute.name,
          initialChildren: children,
        );

  static const String name = 'RegisterRoute';

  static const _i6.PageInfo<void> page = _i6.PageInfo<void>(name);
}

/// generated route for
/// [_i5.Splash]
class SplashRoute extends _i6.PageRouteInfo<void> {
  const SplashRoute({List<_i6.PageRouteInfo>? children})
      : super(
          SplashRoute.name,
          initialChildren: children,
        );

  static const String name = 'SplashRoute';

  static const _i6.PageInfo<void> page = _i6.PageInfo<void>(name);
}
