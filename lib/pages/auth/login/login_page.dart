// ignore_for_file: no_leading_underscores_for_local_identifiers, unused_local_variable, unnecessary_import

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:go_router/go_router.dart';
import 'package:pepper_tree/pages/auth/login/widgets/mobile_login.dart';
import 'package:pepper_tree/pages/auth/login/widgets/web_login.dart';
import 'package:pepper_tree/utils/sizes_helper.dart';

class LoginPage extends ConsumerWidget {
  const LoginPage({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final _width = displayWidth(context);
    final _height = displayHeight(context);
    return Scaffold(
      appBar: AppBar(),
      backgroundColor: Theme.of(context).colorScheme.surface,
      body: Center(
        child: Container(
          padding: const EdgeInsets.all(20),
          height: _height / 1.7,
          width: _width > 650 ? 750 : null,
          child: Card(
            elevation: _width < 650 ? 0 : 2,
            color:
                _width < 650 ? null : Theme.of(context).colorScheme.onSecondary,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                const Spacer(),
                const Text(
                  'Log In',
                  style: TextStyle(
                    fontSize: 24.0,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                const SizedBox(height: 12),
                _width < 650
                    ? MobileLogin(width: _width)
                    : WebLogin(width: _width),
                const SizedBox(height: 8),
                ElevatedButton(
                  style: ElevatedButton.styleFrom(
                    backgroundColor: Theme.of(context).colorScheme.tertiary,
                  ),
                  onPressed: () {
                    GoRouter.of(context).go('/home');
                  },
                  child: Text(
                    'Log in',
                    style: TextStyle(
                      color: Theme.of(context).colorScheme.onSurface,
                    ),
                  ),
                ),
                const SizedBox(height: 8),
                TextButton(
                  onPressed: () {
                    GoRouter.of(context).push('/register');
                  },
                  child: Text(
                    'Dont have an account? Register now',
                    style: TextStyle(
                      color: Theme.of(context).colorScheme.onSurface,
                    ),
                  ),
                ),
                const SizedBox(height: 50),
                const Spacer(),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
