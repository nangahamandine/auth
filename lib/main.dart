import 'package:auth/src/utils/theme/theme.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: AppTheme.lightTheme,
      darkTheme: AppTheme.darkTheme,
      themeMode: ThemeMode.system,
      home: MyHomePage(),
    );
  }
}

class MyHomePage extends StatelessWidget {
  const MyHomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text("Auth App"), leading: const Icon(Icons.auto_awesome),),
      floatingActionButton: FloatingActionButton(onPressed: () {},
      child: const Icon(Icons.shopping_cart_outlined),),
      body: Center(child: SvgPicture.asset('assets/images/marilyn.svg', width: 200, height: 200,),)
    );
  }
}