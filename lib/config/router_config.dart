import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:pepper_tree/pages/login/login_page.dart';
import 'package:pepper_tree/pages/register/register_page.dart';
import 'package:pepper_tree/pages/welcome/welcome_page.dart';
import 'package:pepper_tree/tabs_base.dart';

class AppRouter {
  static final _mainNavKey = GlobalKey<NavigatorState>();
  static final GoRouter router = GoRouter(
    debugLogDiagnostics: true,
    navigatorKey: _mainNavKey,
    routes: [
      GoRoute(
        path: '/',
        builder: (context, state) => const WelcomePage(),
      ),
      GoRoute(
        path: '/login',
        builder: (context, state) => const LoginPage(),
      ),
      GoRoute(
        path: '/register',
        builder: (context, state) => const RegisterPage(),
      ),
      GoRoute(
        path: '/home',
        builder: (context, state) => TabsBase(),
      ),
    ],
  );
}
