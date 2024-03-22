import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:lyratune/routes/app_router.gr.dart';

class RedirectKeyFinderButton extends StatelessWidget {
  final void Function() onTap;
  const RedirectKeyFinderButton({super.key, required this.onTap});

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);

    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 13),
      child: InkWell(
        borderRadius: BorderRadius.circular(16),
        onTap: () {
          context.router.push(const KeyFinderRoute());
        },
        child: Container(
          width: double.infinity,
          padding: const EdgeInsets.all(16),
          decoration: BoxDecoration(
            color: theme.colorScheme.secondary,
            borderRadius: BorderRadius.circular(16),
          ),
          child: ListTile(
            leading: Container(
              height: 54,
              width: 54,
              decoration: BoxDecoration(
                color: theme.colorScheme.primary,
                borderRadius: BorderRadius.circular(54),
              ),
              child: const Icon(
                Icons.music_note,
                size: 30,
              ),
            ),
            title: Text(
              'Utilizar afinador',
              style: theme.textTheme.titleMedium,
            ),
            trailing: Container(
              height: 33,
              width: 33,
              decoration: BoxDecoration(
                color: theme.colorScheme.primary,
                borderRadius: BorderRadius.circular(33),
              ),
              child: Transform.flip(
                  flipX: true, child: Icon(Icons.arrow_back_ios_outlined)),
            ),
          ),
        ),
        // Widget content goes here
      ),
    );
  }
}
