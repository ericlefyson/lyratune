// ignore_for_file: avoid_unnecessary_containers

import 'package:flutter/material.dart';
import 'package:lyratune/routes/app_router.dart';
import 'package:lyratune/utils/styles.dart';


final _appRouter = AppRouter(

    // webViewGuard: WebViewGuard(),
    );
void main() {
  runApp(const LyraTune());
}

class LyraTune extends StatelessWidget {
  const LyraTune({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      
      title: 'LyraTune',
      theme: AppTheme.theme,
      home: const MyHomePage(title: 'Flutter Demo Home Page'),
      debugShowCheckedModeBanner: false,
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({Key? key, required this.title}) : super(key: key);

  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp.router(
      routerConfig: _appRouter.config(),
    );
  }
}
