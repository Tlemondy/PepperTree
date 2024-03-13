import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:pepper_tree/pages/client/categories/categories_page.dart';
import 'package:pepper_tree/pages/client/home/home_page.dart';
import 'package:pepper_tree/providers/tabs_provider.dart';

class TabsBase extends ConsumerWidget {
  TabsBase({Key? key}) : super(key: key);

  final List<Widget> _widgetOptions = const [
    HomePage(),
    CategoriesPage(),
    // OrdersBase(),
    // ProfileBase(),
  ];

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final tabIndex = ref.watch(tabsProvider);

    return Scaffold(
      extendBody: true,
      body: IndexedStack(
        index: tabIndex,
        children: _widgetOptions,
      ),
      bottomNavigationBar: BottomNavigationBar(
        elevation: 0,
        type: BottomNavigationBarType.fixed,
        items: const [
          BottomNavigationBarItem(
            icon: Icon(Icons.home),
            label: 'Home',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.list),
            label: 'Categories',
          ),
          // BottomNavigationBarItem(
          //   icon: Icon(Icons.list),
          //   label: 'Orders',
          // ),
          // BottomNavigationBarItem(
          //   icon: Icon(Icons.person),
          //   label: 'Profile',
          // ),
        ],
        currentIndex: tabIndex,
        backgroundColor: Theme.of(context).colorScheme.surface,
        onTap: (index) => ref.read(tabsProvider.notifier).state = index,
        selectedItemColor: Theme.of(context).colorScheme.onSurface,
        unselectedItemColor: Theme.of(context).colorScheme.secondary,
      ),
    );
  }
}
