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
  @override
  State<LyraTune> createState() => _LyraTuneState();
}

class _LyraTuneState extends State<LyraTune> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp.router(
      debugShowCheckedModeBanner: false,
      theme: AppTheme.theme,
      routerConfig: _appRouter.config(),
    );
  }
}
