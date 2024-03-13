import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:pepper_tree/utils/sizes_helper.dart';

class RegisterPage extends ConsumerWidget {
  const RegisterPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final _width = displayWidth(context);
    return Scaffold(
      backgroundColor: Theme.of(context).colorScheme.surface,
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Spacer(),
            Container(
              padding: EdgeInsets.only(right: 40),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Container(
                    width: _width <= 600 ? 110 : 220,
                    child: Image.asset('assets/images/pepper.png'),
                  ),
                  Text(
                    'Welcome',
                    style: TextStyle(
                      fontSize:
                          24.0, // Increased font size for better visibility
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ],
              ),
            ),
            Spacer(),
            ElevatedButton(
              style: ButtonStyle(
                backgroundColor: MaterialStateProperty.all<Color>(
                  Theme.of(context).colorScheme.onPrimary,
                ),
              ),
              onPressed: () {
                // Add onPressed functionality
              },
              child: Text('Get Started'),
            ),
            SizedBox(
              height: 40,
            )
          ],
        ),
      ),
    );
  }
}
