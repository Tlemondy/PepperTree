import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:pepper_tree/pages/welcome/welcome_page.dart';

class AppRouter {
  static final _mainNavKey = GlobalKey<NavigatorState>();
  static final GoRouter router = GoRouter(
    debugLogDiagnostics: true,
    navigatorKey: _mainNavKey,
    routes: [
      GoRoute(
        path: '/',
        builder: (context, state) => const WelcomePage(),
      )
    ],
  );
}
