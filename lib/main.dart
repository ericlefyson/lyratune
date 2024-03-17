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

class LyraTune extends StatefulWidget {
  const LyraTune({
    Key? key,
  }) : super(key: key);

  // This widget is the home page of your application. It is stateful, meaning
  // that it has a State object (defined below) that contains fields that affect
  // how it looks.

  // This class is the configuration for the state. It holds the values (in this
  // case the title) provided by the parent (in this case the App widget) and
  // used by the build method of the State. Fields in a Widget subclass are
  // always marked "final".

  @override
  State<LyraTune> createState() => _LyraTuneState();
}

class _LyraTuneState extends State<LyraTune> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp.router(
      theme: AppTheme.theme,
      routerConfig: _appRouter.config(),
    );
  }
}
