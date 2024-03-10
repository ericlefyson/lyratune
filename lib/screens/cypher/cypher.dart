import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';

@RoutePage()
class CypherScreen extends StatelessWidget {
  const CypherScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Cypher Screen'),
      ),
      body: const Center(
        child: Text('This is the Cypher Screen'),
      ),
    );
  }
}

