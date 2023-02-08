import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:skill_test/widgets/bottom_navigation_bar.dart';

void main() => runApp(
      const MyApp(),
    );

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      darkTheme: ThemeData.dark(),
      theme: ThemeData(
          appBarTheme: const AppBarTheme(
              systemOverlayStyle:
                  SystemUiOverlayStyle(statusBarColor: Color(0xF007362C)))),
      routes: {'/': (ctx) => const NavigationB()},
    );
  }
}
