import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:lyratune/utils/styles.dart';

class BottomNavigator extends StatelessWidget {
  final TabsRouter tabsRouter;
  const BottomNavigator({super.key, required this.tabsRouter});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.symmetric(
        vertical: 3,
      ),
      decoration: const BoxDecoration(
        borderRadius: BorderRadius.only(
          topLeft: Radius.circular(20),
          topRight: Radius.circular(20),
        ),
        color: Colors.white,
        boxShadow: [
          BoxShadow(
            color: Color.fromRGBO(0, 0, 0, 0.05),
            spreadRadius: 0,
            blurRadius: 15,
          ),
        ],
      ),
      child: BottomNavigationBar(
        type: BottomNavigationBarType.fixed,
        elevation: 0,
        showUnselectedLabels: true,
        backgroundColor: Colors.transparent,
        unselectedItemColor: AppColors.textBody,
        selectedItemColor: AppColors.primary,
        items: const <BottomNavigationBarItem>[
          BottomNavigationBarItem(
            icon: Icon(Icons.home_outlined),
            label: 'Home',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.music_note_outlined),
            label: 'KeyFinder',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.settings_outlined),
            label: 'Cifralizador',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.book),
            label: 'Livraria de Acordes',
          ),
        ],
        currentIndex: tabsRouter.activeIndex,
        onTap: tabsRouter.setActiveIndex,
      ),
    );
  }
}
