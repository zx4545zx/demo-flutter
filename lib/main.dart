import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:restaurant_system/providers/bill_provider.dart';

import 'package:restaurant_system/routes.dart';
import 'package:restaurant_system/providers/counter_provider.dart';
import 'package:restaurant_system/providers/order_provider.dart';

import 'const.dart';

void main() {
  runApp(
    MultiProvider(
      providers: [
        ChangeNotifierProvider(
          create: (_) => CounterProvider(),
        ),
        ChangeNotifierProvider(
          create: (_) => OrderProvider(),
        ),
        ChangeNotifierProvider(
          create: (_) => BillProvider(),
        ),
      ],
      child: const MyApp(),
    ),
  );
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(
        fontFamily: defaultFont.fontFamily,
        listTileTheme: ListTileThemeData(
          iconColor: primaryColor,
        ),
        colorScheme: ColorScheme.fromSeed(
          seedColor: primaryColor,
        ),
        useMaterial3: true,
      ),
      home: const Routes(),
    );
  }
}
