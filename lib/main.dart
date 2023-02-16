import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:getx_list_theme/controller/color_schemes.g.dart';
import 'package:getx_list_theme/screens/PageDois.dart';
import 'package:getx_list_theme/screens/PageHome.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      title: 'Flutter Demo',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(useMaterial3: true, colorScheme: lightColorScheme),
      darkTheme: ThemeData(useMaterial3: true, colorScheme: darkColorScheme),
      themeMode: ThemeMode.system,
      getPages: [
        GetPage(name: '/', page: () => PageHome()),
        GetPage(name: '/pageDois', page: () => PageDois()) // Dynamic route
      ],
      home: PageHome(),
    );
  }
}
