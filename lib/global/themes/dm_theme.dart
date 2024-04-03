
import 'package:flutter/material.dart';

class DmTheme {
  static ThemeData theme = ThemeData(
        colorScheme: ColorScheme.fromSeed(
          seedColor: const Color.fromARGB(255, 14, 65, 205),
          brightness: Brightness.light,
        ),
        useMaterial3: true,
      );
}