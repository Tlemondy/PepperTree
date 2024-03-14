// ignore_for_file: no_leading_underscores_for_local_identifiers, unused_local_variable, unnecessary_import

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:go_router/go_router.dart';
import 'package:pepper_tree/providers/tabs_provider.dart';
import 'package:pepper_tree/utils/sizes_helper.dart';

class CartPage extends ConsumerWidget {
  const CartPage({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final _width = displayWidth(context);
    final _height = displayHeight(context);
    return Scaffold(
      appBar: AppBar(
        automaticallyImplyLeading: true,
        title: const Text('Cart'),
        backgroundColor: Theme.of(context).colorScheme.onSecondary,
        toolbarHeight: _height / 18,
        actions: [
          IconButton(
            onPressed: () {
              ref.read(tabsProvider.notifier).state = 3;
              GoRouter.of(context).pop();
            },
            icon: Icon(
              Icons.catching_pokemon_outlined,
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
                'Cart',
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
