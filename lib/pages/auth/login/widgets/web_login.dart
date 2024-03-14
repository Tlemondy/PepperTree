import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

class WebLogin extends StatelessWidget {
  const WebLogin({
    super.key,
    required double width,
  }) : _width = width;

  final double _width;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: _width > 400 ? 400 : 500,
      child: Column(
        children: [
          SizedBox(
            height: 50,
            child: TextFormField(
              style: TextStyle(color: Theme.of(context).colorScheme.onSurface),
              decoration: InputDecoration(
                labelText: 'Email',
                focusedBorder: OutlineInputBorder(
                  borderSide: BorderSide(
                    color: Theme.of(context)
                        .colorScheme
                        .onSurface, // Border color when focused
                  ),
                ),
                enabledBorder: OutlineInputBorder(
                  borderSide: BorderSide(
                    color: Theme.of(context)
                        .colorScheme
                        .onSurface
                        .withOpacity(0.5), // Border color when not focused
                  ),
                ),
                labelStyle:
                    TextStyle(color: Theme.of(context).colorScheme.onSurface),
              ),
            ),
          ),
          const SizedBox(height: 8),
          SizedBox(
            height: 50,
            child: TextFormField(
              style: TextStyle(color: Theme.of(context).colorScheme.onSurface),
              decoration: InputDecoration(
                labelText: 'Password',
                focusedBorder: OutlineInputBorder(
                  borderSide: BorderSide(
                    color: Theme.of(context)
                        .colorScheme
                        .onSurface, // Border color when focused
                  ),
                ),
                enabledBorder: OutlineInputBorder(
                  borderSide: BorderSide(
                    color: Theme.of(context)
                        .colorScheme
                        .onSurface
                        .withOpacity(0.5), // Border color when not focused
                  ),
                ),
                labelStyle:
                    TextStyle(color: Theme.of(context).colorScheme.onSurface),
              ),
            ),
          ),
          Align(
            alignment: Alignment.centerRight,
            child: TextButton(
              onPressed: () {
                GoRouter.of(context).push('/forgot-password');
              },
              child: Text(
                'Forgot Password?',
                style: TextStyle(
                  color: Theme.of(context).colorScheme.onSurface,
                  decoration: TextDecoration.underline,
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
