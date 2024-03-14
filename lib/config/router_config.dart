import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:pepper_tree/pages/auth/forgot_password_page.dart';
import 'package:pepper_tree/pages/auth/login_page.dart';
import 'package:pepper_tree/pages/auth/register_page.dart';
import 'package:pepper_tree/pages/client/search/search_page.dart';
import 'package:pepper_tree/pages/welcome_page.dart';
import 'package:pepper_tree/pages/client/tabs_base.dart';

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
      GoRoute(
        path: '/search',
        builder: (context, state) => SearchPage(),
      ),
      GoRoute(
        path: '/forgot-password',
        builder: (context, state) => ForgotPasswordPage(),
      ),
    ],
  );
}
