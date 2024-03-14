// ignore_for_file: no_leading_underscores_for_local_identifiers, unused_local_variable, unnecessary_import

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:go_router/go_router.dart';
import 'package:pepper_tree/utils/sizes_helper.dart';

class HomePage extends ConsumerWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final _width = displayWidth(context);
    final _height = displayHeight(context);

    return Scaffold(
      appBar: AppBar(
        automaticallyImplyLeading: false,
        title: const Text('PepperTree'),
        backgroundColor: Theme.of(context).colorScheme.onSecondary,
        toolbarHeight: _height / 18,
        actions: [
          IconButton(
            onPressed: () {
              GoRouter.of(context).push('/cart');
            },
            icon: Icon(
              Icons.shopping_cart,
              color: Theme.of(context).colorScheme.onSurface,
            ),
          ),
        ],
      ),
      backgroundColor: Theme.of(context).colorScheme.surface,
      body: const Center(
        child: Padding(
          padding: EdgeInsets.all(16.0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Text(
                'Home',
                style: TextStyle(
                  fontSize: 24.0,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
