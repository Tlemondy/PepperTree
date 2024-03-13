import 'package:flutter/material.dart';

final lightColorScheme = ColorScheme.fromSeed(
  seedColor: const Color(0xFFBDD5EA),
  brightness: Brightness.light,
  surface: const Color(0xFF577399),
  primary: const Color(0xFFAEE0FF),
  secondary: const Color(0xFF9FCEDD),
  onSurface: const Color(0xFFF7F7FF),
  onPrimary: const Color(0xFFAEE0FF),
  tertiary: const Color(0xFFE5724D),
);

final darkColorScheme = ColorScheme.fromSeed(
  seedColor: const Color(0xFFBDD5EA),
  brightness: Brightness.dark,
  surface: const Color(0xFF577399),
  primary: const Color(0xFFAEE0FF),
  secondary: const Color(0xFF9FCEDD),
  onSurface: const Color(0xFFF7F7FF),
  onPrimary: const Color(0xFFAEE0FF),
  tertiary: const Color(0xFFE5724D),
);
